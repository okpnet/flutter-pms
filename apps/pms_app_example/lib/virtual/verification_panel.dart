import 'package:flutter/material.dart';

import 'virtual_server.dart';

/// 評価用の検証パネル。仮想のサーバーの状態(接続断・メンテナンス・セッション切れ)を切り替える。
///
/// アプリの画面とは別の枠(`Stack` の上)に置く。実物の画面・ルーターには手を入れない。
class VerificationPanel extends StatelessWidget {
  const VerificationPanel({super.key, required this.server});

  final VirtualServer server;

  @override
  Widget build(BuildContext context) => ListenableBuilder(
    listenable: server,
    builder: (context, _) => Material(
      elevation: 6,
      color: Colors.black87,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: DefaultTextStyle(
            style: const TextStyle(color: Colors.white, fontSize: 12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('検証パネル(仮想のサーバー)'),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('接続断'),
                    Switch(
                      value: server.offline,
                      onChanged: server.setOffline,
                    ),
                    const Text('メンテナンス'),
                    Switch(
                      value: server.maintenance,
                      onChanged: server.setMaintenance,
                    ),
                  ],
                ),
                TextButton(
                  onPressed: server.expireSession,
                  child: const Text('セッションを切る'),
                ),
                const Text('admin / admin-pass(管理者)'),
                const Text('sato / sato-pass(受注だけ)'),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
