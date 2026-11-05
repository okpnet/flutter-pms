import 'package:flutter/material.dart';

/// 状態を知らせる画面の部品。画面案(`tools/open-design`)のブート・ログアウト・エラーの構成。
///
/// 中央のカード(幅は 480 まで)に、先頭の表示([leading]。丸いアイコン [StatusIcon] か進行中の表示)・
/// 見出し・説明・注記・操作のボタンを縦に並べる。色は `Theme` から取り、値を直接持たない。
class StatusCard extends StatelessWidget {
  const StatusCard({
    super.key,
    required this.leading,
    required this.title,
    this.message,
    this.note,
    this.showProgress = false,
    this.actions = const [],
  });

  /// 先頭の表示(丸いアイコンや進行中の表示)。
  final Widget leading;
  final String title;

  /// 説明。
  final String? message;

  /// 注記(エラーの内容、カウントダウンなど)。
  final String? note;

  /// 見出しの下に進行バーを出す(起動中・処理中)。
  final bool showProgress;

  /// 操作のボタン。横に並べ、幅が足りなければ折り返す。
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 480),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: Semantics(
                liveRegion: true,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 16,
                  children: [
                    leading,
                    Text(
                      title,
                      style: theme.textTheme.titleLarge,
                      textAlign: TextAlign.center,
                    ),
                    if (message != null && message!.isNotEmpty)
                      Text(
                        message!,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: scheme.onSurfaceVariant,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    if (showProgress)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: const LinearProgressIndicator(minHeight: 6),
                      ),
                    if (note != null && note!.isNotEmpty)
                      Text(
                        note!,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: scheme.onSurfaceVariant,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    if (actions.isNotEmpty)
                      Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 8,
                        runSpacing: 8,
                        children: actions,
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// 状態を表す丸いアイコン(直径 64)。[isError] が true のときは danger-soft の地に danger、
/// それ以外は accent-soft の地に accent。区分は色だけで伝えず、見出しなどの文字を併記すること。
class StatusIcon extends StatelessWidget {
  const StatusIcon(this.icon, {super.key, this.isError = false});

  final IconData icon;
  final bool isError;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(
        color: isError ? scheme.errorContainer : scheme.primaryContainer,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        size: 32,
        color: isError ? scheme.onErrorContainer : scheme.onPrimaryContainer,
      ),
    );
  }
}
