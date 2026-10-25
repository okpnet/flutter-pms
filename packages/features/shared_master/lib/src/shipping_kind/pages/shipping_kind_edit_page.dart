import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logger_provider/logger_provider.dart';

import '../../i18n/strings_provider.dart';
import '../shipping_kinds_provider.dart';

/// 配送区分の編集(編集構造)。[id] が null のときは新規登録。
/// コード・名称は必須、コードは重複不可。削除は確認のうえ行い、使用中なら削除できない。
class ShippingKindEditPage extends ConsumerStatefulWidget {
  const ShippingKindEditPage({super.key, required this.id});

  final String? id;

  @override
  ConsumerState<ShippingKindEditPage> createState() =>
      _ShippingKindEditPageState();
}

class _ShippingKindEditPageState extends ConsumerState<ShippingKindEditPage> {
  final _code = TextEditingController();
  final _name = TextEditingController();
  final _pronunciation = TextEditingController();
  final _nickname = TextEditingController();
  final _remarks = TextEditingController();

  bool _loading = true;
  bool _notFound = false;

  /// 画面に出すエラー(言語に依存しないよう、表示時に文字列へ変換する)。
  String Function(SharedMasterStrings t)? _error;

  bool get _isNew => widget.id == null;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final id = widget.id;
    if (id == null) {
      setState(() => _loading = false);
      return;
    }
    try {
      final kind = await ref.read(shippingKindRepositoryProvider).findById(id);
      if (!mounted) return;
      setState(() {
        _loading = false;
        if (kind == null) {
          _notFound = true;
        } else {
          _code.text = kind.code;
          _name.text = kind.name;
          _pronunciation.text = kind.pronunciation;
          _nickname.text = kind.nickname;
          _remarks.text = kind.remarks;
        }
      });
    } catch (e, s) {
      ref
          .read(loggerProvider)
          .error('[shared_master] 配送区分の取得に失敗: id=$id', ex: e, trace: s);
      if (mounted) {
        setState(() {
          _loading = false;
          _error = (t) => t.shippingKind.loadFailed;
        });
      }
    }
  }

  @override
  void dispose() {
    _code.dispose();
    _name.dispose();
    _pronunciation.dispose();
    _nickname.dispose();
    _remarks.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    try {
      await ref
          .read(shippingKindRepositoryProvider)
          .save(
            ShippingKindDraft(
              id: widget.id,
              code: _code.text,
              name: _name.text,
              pronunciation: _pronunciation.text,
              nickname: _nickname.text,
              remarks: _remarks.text,
            ),
          );
    } on ShippingKindValidationException catch (e) {
      // 入力の誤りは画面に出すだけでログには残さない
      setState(() {
        _error = (t) => switch (e.error) {
          ShippingKindValidationError.codeRequired =>
            t.shippingKind.validation.codeRequired,
          ShippingKindValidationError.nameRequired =>
            t.shippingKind.validation.nameRequired,
          ShippingKindValidationError.codeDuplicated =>
            t.shippingKind.validation.codeDuplicated,
        };
      });
      return;
    } catch (e, s) {
      ref
          .read(loggerProvider)
          .error(
            '[shared_master] 配送区分の保存に失敗: id=${widget.id}',
            ex: e,
            trace: s,
          );
      setState(() => _error = (t) => t.shippingKind.saveFailed);
      return;
    }
    ref.invalidate(shippingKindsProvider);
    if (mounted) context.pop();
  }

  Future<void> _delete() async {
    final id = widget.id;
    if (id == null) return;
    final t = ref.read(sharedMasterStringsProvider);
    final ok = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(t.shippingKind.confirmDelete.title),
        content: Text(t.shippingKind.confirmDelete.message(name: _name.text)),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(t.common.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(t.common.delete),
          ),
        ],
      ),
    );
    if (ok != true) return;
    try {
      await ref.read(shippingKindRepositoryProvider).remove(id);
    } on ShippingKindInUseException {
      // 使用中は想定内の拒否なので、画面に出すだけでログには残さない
      setState(() => _error = (t) => t.shippingKind.validation.inUse);
      return;
    } catch (e, s) {
      ref
          .read(loggerProvider)
          .error('[shared_master] 配送区分の削除に失敗: id=$id', ex: e, trace: s);
      setState(() => _error = (t) => t.shippingKind.deleteFailed);
      return;
    }
    ref.invalidate(shippingKindsProvider);
    if (mounted) context.pop();
  }

  Widget _field(TextEditingController c, String label, {int maxLines = 1}) =>
      TextField(
        controller: c,
        maxLines: maxLines,
        decoration: InputDecoration(labelText: label),
      );

  @override
  Widget build(BuildContext context) {
    final t = ref.watch(sharedMasterStringsProvider);
    final k = t.shippingKind;
    final error = _error?.call(t);
    return Scaffold(
      appBar: AppBar(title: Text(_isNew ? k.createTitle : k.editTitle)),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : _notFound
          ? Center(child: Text(k.notFound))
          : SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  _field(_code, k.fields.code),
                  _field(_name, k.fields.name),
                  _field(_pronunciation, k.columns.pronunciation),
                  _field(_nickname, k.columns.nickname),
                  _field(_remarks, k.columns.remarks, maxLines: 3),
                  if (error != null)
                    Text(
                      error,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  Row(
                    spacing: 12,
                    children: [
                      FilledButton(
                        onPressed: _save,
                        child: Text(t.common.save),
                      ),
                      if (!_isNew)
                        OutlinedButton(
                          onPressed: _delete,
                          child: Text(t.common.delete),
                        ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
