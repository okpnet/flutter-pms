import 'package:data_strategist/lib.dart';
import 'package:logger_provider/logger_provider.dart';

/// ページがデータを取得する窓口。取得の手段(リスト・SQL・GraphQL)は [IQueryState] が隠蔽する。
///
/// 結果の型 [R] はジェネリックで受ける(一覧・件数・1件など、ページごとに違うため)。
abstract interface class IPageDataMediator {
  /// [state] の取得元から取得する。[model] を省略したときは、先頭から [IQueryState.fetchLimit] 件。
  Future<R> fetch<R>(IQueryState<R> state, {IPredicateModel? model});

  /// エラー追跡用のJSON。復元には使用しない。
  Map<String, Object?> toJson();
}

/// [IPageDataMediator] の標準の実装。取得の失敗は、このライブラリ側のエラーとしてログに残して再送出する。
class PageDataMediator implements IPageDataMediator {
  PageDataMediator(this._log);

  final ILoggerProvider _log;

  @override
  Future<R> fetch<R>(IQueryState<R> state, {IPredicateModel? model}) async {
    final target = model ?? PredicateModel(take: state.fetchLimit, skip: 0);
    try {
      return await state.facade.execute(target);
    } catch (e, s) {
      _log.error(
        '[page_mediator_extension] データの取得に失敗しました state=${state.toJson()}',
        ex: e,
        trace: s,
      );
      rethrow;
    }
  }

  @override
  Map<String, Object?> toJson() => {'type': 'PageDataMediator'};
}
