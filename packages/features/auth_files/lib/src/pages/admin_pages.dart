import 'package:loadux_lib/loadux_lib.dart';
import 'package:app_shell/app_shell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pbapi/pbapi.dart';

import '../i18n/strings_provider.dart';
import '../form_rules.dart';
import 'form_support.dart';

String _format(DateTime? t) => t == null
    ? ''
    : '${t.year}-${t.month.toString().padLeft(2, '0')}-'
          '${t.day.toString().padLeft(2, '0')} '
          '${t.hour.toString().padLeft(2, '0')}:'
          '${t.minute.toString().padLeft(2, '0')}';

/// 発行したコードを一度だけ見せる。コードは秘密情報なので、ログにも画面の状態にも残さない。
Future<void> _showIssuedCode(
  BuildContext context,
  AuthFilesStrings t,
  IssuedCode issued,
) => showDialog<void>(
  context: context,
  builder: (_) => AlertDialog(
    title: Text(t.admin.issuedCode.title),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        Text(issued.username),
        Text('${t.admin.issuedCode.code}: ${issued.code}'),
        Text(
          '${t.admin.issuedCode.expires}: ${_format(issued.expiresAt?.toLocal())}',
        ),
        if (issued.mailed) Text(t.admin.issuedCode.mailed),
        Text(t.admin.issuedCode.handOver),
      ],
    ),
    actions: [
      TextButton(
        onPressed: () => Navigator.of(context).pop(),
        child: Text(t.common.back),
      ),
    ],
  ),
);

/// 管理者: 登録申請の一覧。承認(App DB で登録済みの担当者のIDを指定)と却下。
///
/// 担当者の登録(App DB への書き込み)は、この画面ではなく担当者の画面(organization)で行う。
/// 管理者かどうかの判定はサーバーが行う(権限が無ければ 403 の文言を出す)。
class AdminSignupsPage extends ConsumerStatefulWidget {
  const AdminSignupsPage({super.key});

  @override
  ConsumerState<AdminSignupsPage> createState() => _AdminSignupsPageState();
}

class _AdminSignupsPageState extends ConsumerState<AdminSignupsPage>
    with BusyAction {
  List<SignupRequest>? _items;
  String? _notice;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  Future<void> _load() => run(() async {
    final list = await ref.read(adminServiceProvider).listSignupRequests();
    if (mounted) setState(() => _items = list);
  }, operation: 'listSignupRequests');

  Future<void> _approve(SignupRequest request) async {
    final t = ref.read(authFilesStringsProvider);
    final controller = TextEditingController();
    final appUserId = await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('${t.admin.signups.approve}: ${request.fullName}'),
        content: TextField(
          controller: controller,
          autofocus: true,
          decoration: InputDecoration(labelText: t.admin.signups.appUserId),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(t.common.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(controller.text.trim()),
            child: Text(t.admin.signups.approve),
          ),
        ],
      ),
    );
    controller.dispose();
    if (appUserId == null || appUserId.isEmpty) return;
    IssuedCode? issued;
    final ok = await run(() async {
      issued = await ref
          .read(adminServiceProvider)
          .activate(
            userId: request.userId,
            appUserId: appUserId,
            username: request.requestedUsername.isEmpty
                ? null
                : request.requestedUsername,
          );
    }, operation: 'activate');
    if (!ok || !mounted) return;
    setState(() => _notice = t.admin.signups.approved);
    await _showIssuedCode(context, t, issued!);
    if (mounted) await _load();
  }

  Future<void> _reject(SignupRequest request) async {
    final t = ref.read(authFilesStringsProvider);
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(t.admin.signups.confirmReject),
        content: Text(request.fullName),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(t.common.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(t.admin.signups.reject),
          ),
        ],
      ),
    );
    if (confirmed != true) return;
    final ok = await run(
      () => ref.read(adminServiceProvider).reject(request.userId),
      operation: 'reject',
    );
    if (!ok || !mounted) return;
    setState(() => _notice = t.admin.signups.rejected);
    await _load();
  }

  @override
  Widget build(BuildContext context) {
    final t = ref.watch(authFilesStringsProvider);
    final items = _items;
    return ScreenScaffold(
      title: t.admin.signups.title,
      actions: [
        IconButton(
          tooltip: t.common.loading,
          icon: const Icon(Icons.refresh),
          onPressed: busy ? null : _load,
        ),
      ],
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          if (busy) const LoadingBar(),
          if (errorText != null) MessageLine(errorText!),
          if (_notice != null) MessageLine(_notice!, isError: false),
          if (items != null && items.isEmpty) Text(t.admin.signups.empty),
          for (final r in items ?? const <SignupRequest>[])
            Card(
              child: ListTile(
                title: Text(r.fullName),
                subtitle: Text(
                  '${t.admin.signups.userId}: ${r.requestedUsername}\n'
                  '${t.admin.signups.email}: ${r.contactEmail}\n'
                  '${t.admin.signups.created}: ${_format(r.created?.toLocal())}',
                ),
                isThreeLine: true,
                trailing: Wrap(
                  spacing: 8,
                  children: [
                    OutlinedButton(
                      onPressed: busy ? null : () => _reject(r),
                      child: Text(t.admin.signups.reject),
                    ),
                    FilledButton(
                      onPressed: busy ? null : () => _approve(r),
                      child: Text(t.admin.signups.approve),
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

/// 管理者: パスワード再設定の依頼の一覧。本人確認をしたうえで再設定コードを発行し、手渡す。
class AdminResetsPage extends ConsumerStatefulWidget {
  const AdminResetsPage({super.key});

  @override
  ConsumerState<AdminResetsPage> createState() => _AdminResetsPageState();
}

class _AdminResetsPageState extends ConsumerState<AdminResetsPage>
    with BusyAction {
  List<ResetRequest>? _items;
  String? _notice;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  Future<void> _load() => run(() async {
    final list = await ref.read(adminServiceProvider).listResetRequests();
    if (mounted) setState(() => _items = list);
  }, operation: 'listResetRequests');

  Future<void> _issue(ResetRequest request) async {
    final t = ref.read(authFilesStringsProvider);
    IssuedCode? issued;
    final ok = await run(() async {
      // 本人に手渡すため、メールでは送らない(メールのあるユーザーは依頼の一覧に出ない)
      issued = await ref
          .read(adminServiceProvider)
          .issueResetCode(request.userId, mail: false);
    }, operation: 'issueResetCode');
    if (!ok || !mounted) return;
    setState(() => _notice = t.admin.resets.issued);
    await _showIssuedCode(context, t, issued!);
    if (mounted) await _load();
  }

  @override
  Widget build(BuildContext context) {
    final t = ref.watch(authFilesStringsProvider);
    final items = _items;
    return ScreenScaffold(
      title: t.admin.resets.title,
      actions: [
        IconButton(
          tooltip: t.common.loading,
          icon: const Icon(Icons.refresh),
          onPressed: busy ? null : _load,
        ),
      ],
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          if (busy) const LoadingBar(),
          if (errorText != null) MessageLine(errorText!),
          if (_notice != null) MessageLine(_notice!, isError: false),
          if (items != null && items.isEmpty) Text(t.admin.resets.empty),
          for (final r in items ?? const <ResetRequest>[])
            Card(
              child: ListTile(
                title: Text(r.name.isEmpty ? r.username : r.name),
                subtitle: Text(
                  '${r.username}\n'
                  '${t.admin.resets.created}: ${_format(r.created?.toLocal())}',
                ),
                isThreeLine: true,
                trailing: FilledButton(
                  onPressed: busy ? null : () => _issue(r),
                  child: Text(t.admin.resets.issue),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

/// 管理者: ユーザーの作成。担当者(DB の `info_staff`。担当者の画面から [appUserId]・[initialName] を渡す)に、PocketBase のユーザーを作り、
/// 有効化コードを発行して、一度だけ見せる(`AdminService.createUser`)。作業者が自分でユーザーを作ることはできない。
///
/// 入力の検査は形式だけ(ユーザーIDの重複・担当者の存在はサーバーが判定する)。メールを入れ、「メールで送る」のときは、サーバーが
/// コードを送る(メールが無い・送れないときは、手渡し)。役割(`role`)は、画面からは `user` だけ(`admin` を付けられるのは superuser だけ)。
class AdminCreateUserPage extends ConsumerStatefulWidget {
  const AdminCreateUserPage({super.key, this.appUserId = '', this.initialName = ''});

  final String appUserId;
  final String initialName;

  @override
  ConsumerState<AdminCreateUserPage> createState() => _AdminCreateUserPageState();
}

class _AdminCreateUserPageState extends ConsumerState<AdminCreateUserPage> with BusyAction {
  final _username = TextEditingController();
  late final _appUserId = TextEditingController(text: widget.appUserId);
  late final _name = TextEditingController(text: widget.initialName);
  final _email = TextEditingController();
  bool _mail = true;
  bool _submitted = false;
  String? _notice;

  @override
  void dispose() {
    _username.dispose();
    _appUserId.dispose();
    _name.dispose();
    _email.dispose();
    super.dispose();
  }

  String? _emailError(AuthFilesStrings t) => _email.text.trim().isEmpty ? null : FormRules.email(t, _email.text);

  Future<void> _create() async {
    final t = ref.read(authFilesStringsProvider);
    setState(() {
      _submitted = true;
      _notice = null;
    });
    if (FormRules.userId(t, _username.text) != null || FormRules.required(t, _appUserId.text) != null || _emailError(t) != null) return;
    IssuedCode? issued;
    final ok = await run(() async {
      issued = await ref.read(adminServiceProvider).createUser(
        username: _username.text,
        appUserId: _appUserId.text,
        name: _name.text.trim().isEmpty ? null : _name.text,
        email: _email.text.trim().isEmpty ? null : _email.text,
        mail: _mail && _email.text.trim().isNotEmpty,
      );
    }, operation: 'createUser');
    if (!ok || !mounted) return;
    setState(() => _notice = t.admin.createUser.created);
    await _showIssuedCode(context, t, issued!);
  }

  @override
  Widget build(BuildContext context) {
    final t = ref.watch(authFilesStringsProvider);
    final c = t.admin.createUser;
    String? err(String? Function() f) => _submitted ? f() : null;
    return ScreenScaffold(
      title: c.title,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          if (busy) const LoadingBar(),
          if (errorText != null) MessageLine(errorText!),
          if (_notice != null) MessageLine(_notice!, isError: false),
          Text(c.hint, style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 12),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 520),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: 12,
              children: [
                TextField(
                  key: const Key('cu-username'),
                  controller: _username,
                  decoration: InputDecoration(labelText: c.userId, border: const OutlineInputBorder(), errorText: err(() => FormRules.userId(t, _username.text))),
                ),
                TextField(
                  key: const Key('cu-staff'),
                  controller: _appUserId,
                  readOnly: widget.appUserId.isNotEmpty,
                  decoration: InputDecoration(labelText: c.appUserId, border: const OutlineInputBorder(), errorText: err(() => FormRules.required(t, _appUserId.text))),
                ),
                TextField(key: const Key('cu-name'), controller: _name, decoration: InputDecoration(labelText: c.name, border: const OutlineInputBorder())),
                TextField(
                  key: const Key('cu-email'),
                  controller: _email,
                  onChanged: (_) => setState(() {}),
                  decoration: InputDecoration(labelText: c.email, border: const OutlineInputBorder(), errorText: err(() => _emailError(t))),
                ),
                CheckboxListTile(
                  key: const Key('cu-mail'),
                  contentPadding: EdgeInsets.zero,
                  controlAffinity: ListTileControlAffinity.leading,
                  value: _mail && _email.text.trim().isNotEmpty,
                  onChanged: _email.text.trim().isEmpty ? null : (v) => setState(() => _mail = v ?? false),
                  title: Text(c.mail),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: FilledButton(key: const Key('cu-create'), onPressed: busy ? null : _create, child: Text(c.create)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
