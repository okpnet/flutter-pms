import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 異常の対象(画面で選ぶ。DB には持たない)。どれを選ぶかで、DB の関数 `complaint_register` に渡す対象の ID の引数が決まる(コード値では分岐しない)。
enum ComplaintTarget {
  equipment('equipment'),
  process('task'),
  work(null),
  purchaseRec('purchaserec'),
  visiter(null),
  order('order'),
  stakeholder('stakeholder');

  const ComplaintTarget(this.pickerKey);

  /// 対象を選ぶ台帳の実体のキー(`EntityPickerDestination`)。null は、シンボルまたは ID を入力する。
  final String? pickerKey;

  /// 数量が必須(ロット)。
  bool get quantityRequired => this == visiter;

  /// 数量を入力できる(ロット・受入・作業実績)。
  bool get hasQuantity => this == visiter || this == purchaseRec || this == work;

  static ComplaintTarget? byName(String? name) {
    for (final t in values) {
      if (t.name == name) return t;
    }
    return null;
  }
}

/// 異常の登録の入力。
class ComplaintRegisterInput {
  const ComplaintRegisterInput({
    required this.target,
    this.targetId = '',
    this.title = '',
    this.details = '',
    this.occurredAt,
    this.quantity = '',
  });

  final ComplaintTarget target;

  /// 対象の ID(選択画面で選んだ ID)。work・visiter は、入力したシンボルまたは ID。
  final String targetId;
  final String title;
  final String details;
  final DateTime? occurredAt;

  /// 数量(文字。空は省略)。
  final String quantity;

  Map<String, Object?> toJson() => {
    'target': target.name,
    'targetId': targetId,
    'title': title,
    'details': details,
    'occurredAt': occurredAt?.toIso8601String(),
    'quantity': quantity,
  };
}

/// 入力の誤りの種類(画面が表示時に文字へ変換する)。
enum ComplaintRegisterError { titleRequired, targetRequired, quantityInvalid }

/// 入力を検査する(画面の事前検証と、メモリ上の取得元で使う)。誤りが無ければ空。DB の関数と同じ規則(数量はロットで必須・0 より大きい)。
List<ComplaintRegisterError> validateComplaintRegister(ComplaintRegisterInput input) {
  final errors = <ComplaintRegisterError>[];
  if (input.title.trim().isEmpty) errors.add(ComplaintRegisterError.titleRequired);
  if (input.targetId.trim().isEmpty) errors.add(ComplaintRegisterError.targetRequired);
  final q = input.quantity.trim();
  final parsed = double.tryParse(q);
  if (input.target.quantityRequired ? (parsed == null || parsed <= 0) : (q.isNotEmpty && (parsed == null || parsed <= 0))) {
    errors.add(ComplaintRegisterError.quantityInvalid);
  }
  return errors;
}

/// 入力が正しくないときの例外。
class ComplaintRegisterException implements Exception {
  const ComplaintRegisterException(this.errors);

  final List<ComplaintRegisterError> errors;

  @override
  String toString() => 'ComplaintRegisterException(${errors.map((e) => e.name).join(', ')})';
}

/// 異常の登録の取得元。アプリが GraphQL 版に差し替える(Strategy)。
///
/// 登録は DB の関数 `complaint_register`(1 トランザクション: 題名・内容・異常本体・種類の子の表)。戻り値は異常の ID。
/// 入力が正しくないときは [ComplaintRegisterException]。
abstract interface class IComplaintRegisterGateway {
  Future<String> register(ComplaintRegisterInput input);
}

/// メモリ上の取得元(既定・example・テスト用)。
class InMemoryComplaintRegisterGateway implements IComplaintRegisterGateway {
  /// 登録された入力(テスト用)。
  final List<ComplaintRegisterInput> registered = [];

  /// true にすると、登録が失敗する(テスト用)。
  bool failing = false;

  @override
  Future<String> register(ComplaintRegisterInput input) async {
    if (failing) throw StateError('failed');
    final errors = validateComplaintRegister(input);
    if (errors.isNotEmpty) throw ComplaintRegisterException(errors);
    registered.add(input);
    return 'complaint-${registered.length}';
  }
}

final complaintRegisterGatewayProvider = Provider<IComplaintRegisterGateway>((ref) => InMemoryComplaintRegisterGateway());
