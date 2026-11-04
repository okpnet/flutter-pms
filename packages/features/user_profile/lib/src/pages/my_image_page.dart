import 'package:app_shell/app_shell.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pbapi/pbapi.dart';

import '../avatar/image_normalizer.dart';
import '../avatar/image_picker_gateway.dart';
import '../avatar/image_policy.dart';
import '../avatar/user_avatar_provider.dart';
import '../i18n/strings_provider.dart';

/// 自分のイメージ(画面案の設定画面の「自分のイメージ」)。
///
/// 現在の画像(と名前・役割のプレビュー)を見せる。変更できるのは [isChangeUserImageProvider] が true のときだけ
/// (標準は変更できず、管理者が変更する)。変更できるときは、画像ファイルを選ぶ(PNG・JPEG・GIF・WebP、2MBまで)と
/// 縮小して登録し、アプリバーとダッシュボードの顔写真が変わる。「初期のイメージに戻す」で登録を削除する。
class MyImagePage extends ConsumerStatefulWidget {
  const MyImagePage({super.key});

  @override
  ConsumerState<MyImagePage> createState() => _MyImagePageState();
}

class _MyImagePageState extends ConsumerState<MyImagePage> {
  bool _busy = false;
  String? _error;
  String? _notice;

  Future<void> _run(Future<String?> Function() body) async {
    if (_busy) return;
    setState(() {
      _busy = true;
      _error = null;
      _notice = null;
    });
    try {
      final notice = await body();
      if (mounted) setState(() => _notice = notice);
    } catch (e) {
      if (mounted) setState(() => _error = _message(e));
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  /// 失敗を利用者向けの文言にする(失敗は文字列ではなく種類で受ける)。
  String _message(Object e) {
    final t = ref.read(userProfileStringsProvider).errors;
    return switch (e) {
      ImageTooLargeException(:final maxBytes) => t.tooLarge(
        max: maxBytes ~/ (1024 * 1024),
      ),
      InvalidImageException() => t.invalidImage,
      UnsupportedError() => t.unsupported,
      StateError() => t.unauthorized,
      PbException(:final kind) => switch (kind) {
        PbFailureKind.validation => t.validation,
        PbFailureKind.forbidden || PbFailureKind.notFound => t.forbidden,
        PbFailureKind.unauthorized => t.unauthorized,
        PbFailureKind.rateLimited => t.rateLimited,
        PbFailureKind.network => t.network,
        _ => t.unknown,
      },
      _ => t.unknown,
    };
  }

  Future<void> _choose() => _run(() async {
    final picked = await ref.read(imagePickerGatewayProvider).pick();
    if (picked == null) return null; // 取り消し
    await ref.read(userAvatarProvider.notifier).change(picked);
    return ref.read(userProfileStringsProvider).myImage.changed;
  });

  Future<void> _reset() => _run(() async {
    await ref.read(userAvatarProvider.notifier).reset();
    return ref.read(userProfileStringsProvider).myImage.resetDone;
  });

  @override
  Widget build(BuildContext context) {
    final t = ref.watch(userProfileStringsProvider);
    final avatar = ref.watch(userAvatarProvider).value;
    final summary = ref.watch(userSummaryProvider);
    final canChange = ref.watch(isChangeUserImageProvider);
    final theme = Theme.of(context);
    return ScreenScaffold(
      title: t.myImage.title,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  Text(t.myImage.title, style: theme.textTheme.titleMedium),
                  if (summary == null || avatar == null)
                    Text(t.myImage.noSession)
                  else
                    Row(
                      spacing: 16,
                      children: [
                        Semantics(
                          label: t.myImage.current,
                          image: true,
                          child: CircleAvatar(
                            radius: 48,
                            backgroundImage: avatar.image,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                summary.name,
                                style: theme.textTheme.titleMedium,
                              ),
                              if (summary.role.isNotEmpty) Text(summary.role),
                            ],
                          ),
                        ),
                      ],
                    ),
                  if (!canChange) Text(t.myImage.readOnly),
                  if (canChange && summary != null) ...[
                    Text(t.myImage.note, style: theme.textTheme.bodySmall),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        FilledButton.icon(
                          onPressed: _busy ? null : _choose,
                          icon: const Icon(Icons.upload_file),
                          label: Text(t.myImage.choose),
                        ),
                        OutlinedButton(
                          onPressed: _busy || avatar == null || avatar.isDefault
                              ? null
                              : _reset,
                          child: Text(t.myImage.reset),
                        ),
                      ],
                    ),
                  ],
                  if (_busy) const LinearProgressIndicator(),
                  if (_error != null)
                    Semantics(
                      liveRegion: true,
                      child: Text(
                        _error!,
                        style: TextStyle(color: theme.colorScheme.error),
                      ),
                    ),
                  if (_notice != null)
                    Semantics(
                      liveRegion: true,
                      child: Text(
                        _notice!,
                        style: TextStyle(color: theme.colorScheme.primary),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
