import 'package:flutter/material.dart';

/// 起動直後(状態管理・テーマの準備ができる前)に出す読み込み中の画面。
///
/// 接続先・ログの準備(アセットや保管庫の読み込み)が終わるまで、最初のフレームが空にならないようにする。
/// 文字列・テーマはまだ使えないので、標準の見た目で表示だけする。
class BootSplash extends StatelessWidget {
  const BootSplash({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(body: Center(child: CircularProgressIndicator())),
  );
}
