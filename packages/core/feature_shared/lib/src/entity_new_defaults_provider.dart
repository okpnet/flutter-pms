import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 実体の新規登録の画面で、項目の初期値にする値(実体のキー → {項目のキー: 値})。既定は何も入れない。
/// 遷移先で渡す初期値(`EntityEditDestination.initialValues`)があるときは、そちらが優先される。
///
/// アプリが、DB の設定を元に上書きする(例: 利害関係者の取引の通貨は、標準の通貨(基準通貨)を入れる)。
/// DB の既定値では入れず、アプリが入れる(NULL は許さないため、初期値の無い登録は検証で止まる)。取り出せないときは空を返す。
final entityNewDefaultsProvider = FutureProvider.family<Map<String, String>, String>((ref, entityKey) async => const {});
