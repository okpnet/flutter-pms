import 'package:flutter_riverpod/flutter_riverpod.dart';

/// アプリの名前(画面の見出しに入れる。例: 「{アプリ名}にサインイン」)。
///
/// アプリが、使用言語に合わせた名前(例: `app_core` の文字列の `app.title`)に上書きする。
/// 上書きしないときは、製品の名前「生産管理」。画面の文言は、名前を直接書かず、
/// slang の引数(`{app}`)として受け取る。
final appNameProvider = Provider<String>((ref) => '生産管理');
