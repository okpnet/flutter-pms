import 'package:app_core/app_core_api.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../backstage_controller.dart';
import '../i18n/strings_provider.dart';
import '../settings/backstage_resolver.dart';
import '../settings/backstage_settings.dart';

/// 裏設定のページ。システム制作者だけが、入口の判定(ログインページ)を通ったときに開ける。
///
/// 枠(サイドバー・タイトルバー)の外にあり、戻る操作・ほかのページへのリンクを持たない。
/// 出るには「終了」だけ(ログインへ戻る)。入口を通っていないときは、何も出さずに戻す。
class BackstagePage extends ConsumerStatefulWidget {
  const BackstagePage({super.key});

  @override
  ConsumerState<BackstagePage> createState() => _BackstagePageState();
}

class _BackstagePageState extends ConsumerState<BackstagePage> {
  late final Map<BackstageField, TextEditingController> _text;
  bool? _isChangeUserImage;
  bool? _sidebarIconOnly;
  String? _logLevel;
  List<BackstageIssue> _issues = const [];
  String? _notice;
  bool _noticeIsError = false;
  bool _busy = false;

  @override
  void initState() {
    super.initState();
    final s = ref.read(backstageControllerProvider);
    _text = {
      BackstageField.graphqlUrl: TextEditingController(text: s.graphqlUrl),
      BackstageField.pocketbaseUrl: TextEditingController(
        text: s.pocketbaseUrl,
      ),
      BackstageField.maintenanceUrl: TextEditingController(
        text: s.maintenanceUrl,
      ),
    };
    _load(s);
    if (!ref.read(backstageUnlockProvider)) {
      // 入口を通っていない。何も出さずに戻す。
      WidgetsBinding.instance.addPostFrameCallback((_) => _leave());
    }
  }

  void _load(BackstageSettings s) {
    _isChangeUserImage = s.isChangeUserImage;
    _sidebarIconOnly = s.sidebarIconOnly;
    _logLevel = s.logLevel;
    _text[BackstageField.graphqlUrl]!.text = s.graphqlUrl ?? '';
    _text[BackstageField.pocketbaseUrl]!.text = s.pocketbaseUrl ?? '';
    _text[BackstageField.maintenanceUrl]!.text = s.maintenanceUrl ?? '';
  }

  @override
  void dispose() {
    for (final c in _text.values) {
      c.dispose();
    }
    super.dispose();
  }

  String? _textOrNull(BackstageField f) {
    final v = _text[f]!.text.trim();
    return v.isEmpty ? null : v;
  }

  BackstageSettings _current() => BackstageSettings(
    isChangeUserImage: _isChangeUserImage,
    graphqlUrl: _textOrNull(BackstageField.graphqlUrl),
    pocketbaseUrl: _textOrNull(BackstageField.pocketbaseUrl),
    maintenanceUrl: _textOrNull(BackstageField.maintenanceUrl),
    logLevel: _logLevel,
    sidebarIconOnly: _sidebarIconOnly,
  );

  Future<void> _save() async {
    setState(() => _busy = true);
    final result = await ref
        .read(backstageControllerProvider.notifier)
        .save(_current());
    if (!mounted) return;
    final t = ref.read(backstageStringsProvider);
    setState(() {
      _busy = false;
      _issues = result.issues;
      _noticeIsError = !result.saved;
      _notice = result.saved
          ? t.notice.saved
          : result.storeFailed
          ? t.notice.storeFailed
          : null;
    });
  }

  Future<void> _reset() async {
    setState(() => _busy = true);
    final result = await ref
        .read(backstageControllerProvider.notifier)
        .reset();
    if (!mounted) return;
    final t = ref.read(backstageStringsProvider);
    setState(() {
      _busy = false;
      _issues = const [];
      _noticeIsError = !result.saved;
      _notice = result.saved ? t.notice.reset : t.notice.storeFailed;
      if (result.saved) _load(const BackstageSettings());
    });
  }

  /// 終了。入口を閉じて、ログインへ戻る(遷移先が無いときは先頭へ)。
  void _leave() {
    ref.read(backstageUnlockProvider.notifier).lock();
    final destination = ref.read(signInDestinationProvider);
    if (destination != null) {
      ref.read(commandBusProvider).execute(destination);
    } else if (mounted) {
      context.go('/');
    }
  }

  String? _issueText(BackstageStrings t, BackstageField f) {
    for (final i in _issues) {
      if (i.field == f) {
        return switch (i.kind) {
          BackstageIssueKind.urlInvalid => t.issue.urlInvalid,
          BackstageIssueKind.urlNotHttps => t.issue.urlNotHttps,
          BackstageIssueKind.logLevelUnknown => t.issue.logLevelUnknown,
        };
      }
    }
    return null;
  }

  String _sourceText(BackstageStrings t, BackstageSource s) => switch (s) {
    BackstageSource.launch => t.source.launch,
    BackstageSource.stored => t.source.stored,
    BackstageSource.asset => t.source.asset,
    BackstageSource.none => t.source.none,
  };

  @override
  Widget build(BuildContext context) {
    final t = ref.watch(backstageStringsProvider);
    final unlocked = ref.watch(backstageUnlockProvider);
    if (!unlocked) return const Scaffold(body: SizedBox.shrink());
    final boot = ref.watch(backstageBootProvider);
    final launch = boot.launch;
    final resolver = ref.watch(backstageResolverProvider);
    final theme = Theme.of(context);

    bool locked(BackstageField f) =>
        resolver.sourceOf(f) == BackstageSource.launch &&
        _launchHas(launch, f);

    Widget source(BackstageField f) => Padding(
      padding: const EdgeInsets.only(top: 2, bottom: 12),
      child: Text(
        _sourceText(t, resolver.sourceOf(f)),
        style: theme.textTheme.bodySmall,
      ),
    );

    Widget boolField(
      BackstageField f,
      String label,
      bool? value,
      void Function(bool?) onChanged,
    ) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownButtonFormField<bool?>(
          key: ValueKey('field-${f.name}'),
          initialValue: value,
          decoration: InputDecoration(labelText: label),
          items: [
            DropdownMenuItem(value: null, child: Text(t.choice.followDefault)),
            DropdownMenuItem(value: true, child: Text(t.choice.yes)),
            DropdownMenuItem(value: false, child: Text(t.choice.no)),
          ],
          onChanged: locked(f) || _busy ? null : (v) => setState(() => onChanged(v)),
        ),
        source(f),
      ],
    );

    Widget urlField(BackstageField f, String label) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          key: ValueKey('field-${f.name}'),
          controller: _text[f],
          enabled: !locked(f) && !_busy,
          decoration: InputDecoration(
            labelText: label,
            helperText: t.hint.url,
            errorText: _issueText(t, f),
          ),
        ),
        source(f),
      ],
    );

    // メンテナンス中などでも他のページへ出ないよう、戻る操作を止める。出るのは「終了」だけ。
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 640),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(t.title, style: theme.textTheme.headlineSmall),
                  const SizedBox(height: 8),
                  Text(t.intro),
                  const SizedBox(height: 16),
                  if (_notice != null)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Text(
                        _notice!,
                        key: const ValueKey('notice'),
                        style: TextStyle(
                          color: _noticeIsError
                              ? theme.colorScheme.error
                              : theme.colorScheme.primary,
                        ),
                      ),
                    ),
                  boolField(
                    BackstageField.isChangeUserImage,
                    t.fields.isChangeUserImage,
                    _isChangeUserImage,
                    (v) => _isChangeUserImage = v,
                  ),
                  urlField(BackstageField.graphqlUrl, t.fields.graphqlUrl),
                  urlField(BackstageField.pocketbaseUrl, t.fields.pocketbaseUrl),
                  urlField(
                    BackstageField.maintenanceUrl,
                    t.fields.maintenanceUrl,
                  ),
                  DropdownButtonFormField<String?>(
                    key: const ValueKey('field-logLevel'),
                    initialValue: _logLevel,
                    decoration: InputDecoration(
                      labelText: t.fields.logLevel,
                      errorText: _issueText(t, BackstageField.logLevel),
                    ),
                    items: [
                      DropdownMenuItem(
                        value: null,
                        child: Text(t.choice.followDefault),
                      ),
                      for (final level in backstageLogLevels)
                        DropdownMenuItem(value: level, child: Text(level)),
                    ],
                    onChanged: locked(BackstageField.logLevel) || _busy
                        ? null
                        : (v) => setState(() => _logLevel = v),
                  ),
                  source(BackstageField.logLevel),
                  boolField(
                    BackstageField.sidebarIconOnly,
                    t.fields.sidebarIconOnly,
                    _sidebarIconOnly,
                    (v) => _sidebarIconOnly = v,
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      FilledButton(
                        key: const ValueKey('save'),
                        onPressed: _busy ? null : _save,
                        child: Text(t.buttons.save),
                      ),
                      OutlinedButton(
                        key: const ValueKey('reset'),
                        onPressed: _busy ? null : _reset,
                        child: Text(t.buttons.reset),
                      ),
                      TextButton(
                        key: const ValueKey('exit'),
                        onPressed: _busy ? null : _leave,
                        child: Text(t.buttons.exit),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool _launchHas(BackstageSettings launch, BackstageField f) => switch (f) {
    BackstageField.isChangeUserImage => launch.isChangeUserImage != null,
    BackstageField.graphqlUrl => launch.graphqlUrl != null,
    BackstageField.pocketbaseUrl => launch.pocketbaseUrl != null,
    BackstageField.maintenanceUrl => launch.maintenanceUrl != null,
    BackstageField.logLevel => launch.logLevel != null,
    BackstageField.sidebarIconOnly => launch.sidebarIconOnly != null,
  };
}
