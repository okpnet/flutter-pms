import 'dart:async';

import 'package:app_core/app_core_api.dart';
import 'package:app_shell/app_shell.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger_provider/logger_provider.dart';

import '../auth_files_destinations.dart';
import '../i18n/strings_provider.dart';
import '../sign_out.dart';

/// ログアウト(画面案 `#/logout`)。確認 → ログアウト中 → 完了(5秒後にログイン画面へ)。
///
/// ユーザーメニューの「ログアウト」から開くと、確認を出す(キャンセルでダッシュボードへ)。
/// セッション切れ([sessionExpired])のときや、すでにログアウトしているときは、確認を出さずに
/// ログアウトして、完了を表示する。ログアウトの実体は [signOutProvider]。失敗してもログに残し、
/// 完了を表示する(ログアウトで止めない)。完了の表示は、5秒のカウントダウンのあと、または
/// 「今すぐログイン画面へ」でログイン画面へ進む。ログイン画面へ進む前に画面を閉じても、何も起きない。
class LogoutPage extends ConsumerStatefulWidget {
  const LogoutPage({super.key, this.sessionExpired = false});

  /// セッション切れで開いた(確認を出さない)。
  final bool sessionExpired;

  /// 完了の表示から、ログイン画面へ進むまでの秒数。
  static const countdownSeconds = 5;

  @override
  ConsumerState<LogoutPage> createState() => _LogoutPageState();
}

enum _Stage { confirm, working, done }

class _LogoutPageState extends ConsumerState<LogoutPage> {
  late _Stage _stage;
  int _remaining = LogoutPage.countdownSeconds;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    final signedIn = ref.read(userSummaryProvider) != null;
    final needsConfirm = !widget.sessionExpired && signedIn;
    _stage = needsConfirm ? _Stage.confirm : _Stage.working;
    if (!needsConfirm) {
      // 描画の途中で状態を変えないよう、構築の後に実行する。
      Future.microtask(_signOut);
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Future<void> _signOut() async {
    if (mounted) setState(() => _stage = _Stage.working);
    try {
      await ref.read(signOutProvider)();
    } catch (e, s) {
      // 失敗してもログアウト画面は完了を表示する。原因は、この機能の失敗としてログに残す。
      ref
          .read(loggerProvider)
          .error('[auth_files] ログアウトの実行に失敗しました', ex: e, trace: s);
    }
    if (!mounted) return;
    setState(() {
      _stage = _Stage.done;
      _remaining = LogoutPage.countdownSeconds;
    });
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) return;
      if (_remaining <= 1) {
        timer.cancel();
        _toLogin();
      } else {
        setState(() => _remaining -= 1);
      }
    });
  }

  void _toLogin() {
    _timer?.cancel();
    ref.read(commandBusProvider).execute(const LoginDestination());
  }

  @override
  Widget build(BuildContext context) {
    final t = ref.watch(authFilesStringsProvider).logout;
    final user = ref.watch(userSummaryProvider);
    final card = switch (_stage) {
      _Stage.confirm => StatusCard(
        leading: const StatusIcon(Icons.logout),
        title: t.confirmHeading,
        message: t.confirmMessage(name: user?.name ?? ''),
        actions: [
          OutlinedButton(
            onPressed: () => ref
                .read(commandBusProvider)
                .execute(const DashboardDestination()),
            child: Text(t.confirmCancel),
          ),
          FilledButton(onPressed: _signOut, child: Text(t.confirmSubmit)),
        ],
      ),
      _Stage.working => StatusCard(
        leading: const SizedBox(
          width: 48,
          height: 48,
          child: CircularProgressIndicator(strokeWidth: 4),
        ),
        title: t.workingHeading,
        message: t.workingMessage,
        showProgress: true,
      ),
      _Stage.done => StatusCard(
        leading: const StatusIcon(Icons.check),
        title: widget.sessionExpired ? t.expiredHeading : t.doneHeading,
        message: widget.sessionExpired ? t.expiredMessage : t.doneMessage,
        note: '${t.countdown(n: _remaining)}\n${t.note}',
        actions: [FilledButton(onPressed: _toLogin, child: Text(t.toLogin))],
      ),
    };
    // ログアウトの途中・完了で戻る操作をしても、ほかのページへ移らない(ログイン後の画面に戻さない)。
    return PopScope(
      canPop: _stage == _Stage.confirm,
      child: Scaffold(body: card),
    );
  }
}
