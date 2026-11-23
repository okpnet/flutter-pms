import 'package:app_shell/app_shell.dart';
import 'package:feature_shared/feature_shared.dart'
    show EntityPickerDestination, commandBusProvider;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../complaint_register/complaint_register_gateway.dart';
import '../i18n/strings_provider.dart';
import 'my_audits_page.dart' show formatAuditDate;

/// 異常の登録。対象の種類(設備・工程・作業実績・受入・ロット・受注・利害関係者)を選び、その対象を選んで、題名・内容を入れて登録する。
///
/// 種類は、対象を選ぶことで決まる(DB の関数 `complaint_register` が、対象の ID のどれが入っているかで種類を決める)。
/// 設備・工程・受入・受注・利害関係者は、台帳の選択画面(`EntityPickerDestination`。機能同士はキーだけで使う)で選ぶ。
/// 作業実績・ロットは、シンボル(バーコード)または ID を入力する。関連する画面の行の操作からは、種類と対象を決めて開く。
class ComplaintRegisterPage extends ConsumerStatefulWidget {
  const ComplaintRegisterPage({
    super.key,
    this.target,
    this.targetId,
    this.targetLabel,
  });

  final String? target;
  final String? targetId;
  final String? targetLabel;

  @override
  ConsumerState<ComplaintRegisterPage> createState() =>
      _ComplaintRegisterPageState();
}

class _ComplaintRegisterPageState extends ConsumerState<ComplaintRegisterPage> {
  final _title = TextEditingController();
  final _details = TextEditingController();
  final _quantity = TextEditingController();
  final _targetText = TextEditingController();
  late ComplaintTarget _target =
      ComplaintTarget.byName(widget.target) ?? ComplaintTarget.process;
  String _targetId = '';
  String _targetLabel = '';
  DateTime? _occurredAt;
  bool _submitted = false;
  bool _saving = false;
  bool _registered = false;
  bool _failed = false;

  @override
  void initState() {
    super.initState();
    _targetId = widget.targetId ?? '';
    _targetLabel = widget.targetLabel ?? '';
    if (_target.symbolEntry) _targetText.text = _targetId;
  }

  @override
  void dispose() {
    _title.dispose();
    _details.dispose();
    _quantity.dispose();
    _targetText.dispose();
    super.dispose();
  }

  ComplaintRegisterInput get _input => ComplaintRegisterInput(
    target: _target,
    // 選択画面で選んだ ID を優先し、無ければ入力したシンボル(または ID)
    targetId: _targetId.isNotEmpty ? _targetId : _targetText.text.trim(),
    title: _title.text,
    details: _details.text,
    occurredAt: _occurredAt,
    quantity: _quantity.text,
  );

  Future<void> _pick() async {
    final sel = await ref
        .read(commandBusProvider)
        .execute(EntityPickerDestination(_target.pickerKey));
    if (sel == null || !mounted) return;
    setState(() {
      _targetId = sel.id;
      _targetLabel = sel.label;
      _targetText.clear(); // 選んだら、入力したシンボルは使わない
    });
  }

  Future<void> _submit() async {
    setState(() {
      _submitted = true;
      _registered = false;
      _failed = false;
    });
    if (validateComplaintRegister(_input).isNotEmpty) return;
    setState(() => _saving = true);
    try {
      await ref.read(complaintRegisterGatewayProvider).register(_input);
      if (!mounted) return;
      setState(() {
        _saving = false;
        _registered = true;
        _submitted = false;
        _title.clear();
        _details.clear();
        _quantity.clear();
        _targetText.clear();
        _targetId = '';
        _targetLabel = '';
      });
    } on ComplaintRegisterException {
      if (!mounted) return;
      setState(() {
        _saving = false;
        _submitted = true;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _saving = false;
        _failed = true;
      });
    }
  }

  String _kindLabel(dynamic s, ComplaintTarget t) => switch (t) {
    ComplaintTarget.equipment => s.kindEquipment as String,
    ComplaintTarget.process => s.kindProcess as String,
    ComplaintTarget.work => s.kindWork as String,
    ComplaintTarget.purchaseRec => s.kindPurchaseRec as String,
    ComplaintTarget.visiter => s.kindVisiter as String,
    ComplaintTarget.order => s.kindOrder as String,
    ComplaintTarget.stakeholder => s.kindStakeholder as String,
  };

  @override
  Widget build(BuildContext context) {
    final s = ref.watch(qualityStringsProvider).complaintRegister;
    final scheme = Theme.of(context).colorScheme;
    final errors = _submitted
        ? validateComplaintRegister(_input).toSet()
        : <ComplaintRegisterError>{};
    return ScreenScaffold(
      title: s.title,
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 720),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  s.hint,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: scheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<ComplaintTarget>(
                  key: const Key('cr-kind'),
                  initialValue: _target,
                  decoration: InputDecoration(
                    labelText: s.kind,
                    border: const OutlineInputBorder(),
                  ),
                  items: [
                    for (final t in ComplaintTarget.values)
                      DropdownMenuItem(value: t, child: Text(_kindLabel(s, t))),
                  ],
                  onChanged: _saving
                      ? null
                      : (t) => setState(() {
                          if (t == null || t == _target) return;
                          _target = t;
                          _targetId = '';
                          _targetLabel = '';
                          _targetText.clear();
                        }),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: InputDecorator(
                        decoration: InputDecoration(
                          labelText: s.target,
                          border: const OutlineInputBorder(),
                          errorText:
                              errors.contains(
                                ComplaintRegisterError.targetRequired,
                              )
                              ? s.errorTarget
                              : null,
                        ),
                        child: Text(
                          _targetLabel.isNotEmpty
                              ? _targetLabel
                              : (_targetId.isNotEmpty
                                    ? _targetId
                                    : s.targetNone),
                          key: const Key('cr-target-label'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    OutlinedButton(
                      key: const Key('cr-pick'),
                      onPressed: _saving ? null : _pick,
                      child: Text(s.pick),
                    ),
                  ],
                ),
                if (_target.symbolEntry) ...[
                  const SizedBox(height: 12),
                  TextField(
                    key: const Key('cr-target-text'),
                    controller: _targetText,
                    enabled: !_saving,
                    onChanged: (_) => setState(() {
                      // 入力したら、選んだ対象は使わない
                      _targetId = '';
                      _targetLabel = '';
                    }),
                    decoration: InputDecoration(
                      labelText: s.targetBySymbol,
                      border: const OutlineInputBorder(),
                      errorText:
                          errors.contains(ComplaintRegisterError.targetRequired)
                          ? s.errorTarget
                          : null,
                    ),
                  ),
                ],
                const SizedBox(height: 12),
                TextField(
                  key: const Key('cr-title'),
                  controller: _title,
                  enabled: !_saving,
                  onChanged: (_) => setState(() {}),
                  decoration: InputDecoration(
                    labelText: s.titleLabel,
                    border: const OutlineInputBorder(),
                    errorText:
                        errors.contains(ComplaintRegisterError.titleRequired)
                        ? s.errorTitle
                        : null,
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  key: const Key('cr-details'),
                  controller: _details,
                  enabled: !_saving,
                  minLines: 3,
                  maxLines: 6,
                  decoration: InputDecoration(
                    labelText: s.details,
                    border: const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: InputDecorator(
                        decoration: InputDecoration(
                          labelText: s.occurredAt,
                          border: const OutlineInputBorder(),
                        ),
                        child: Text(
                          _occurredAt == null
                              ? s.now
                              : formatAuditDate(_occurredAt!),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    OutlinedButton(
                      key: const Key('cr-date'),
                      onPressed: _saving
                          ? null
                          : () async {
                              final d = await showDatePicker(
                                context: context,
                                initialDate: _occurredAt ?? DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime.now().add(
                                  const Duration(days: 1),
                                ),
                              );
                              if (d != null && mounted) {
                                setState(() => _occurredAt = d);
                              }
                            },
                      child: Text(s.pickDate),
                    ),
                  ],
                ),
                if (_target.hasQuantity) ...[
                  const SizedBox(height: 12),
                  TextField(
                    key: const Key('cr-quantity'),
                    controller: _quantity,
                    enabled: !_saving,
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    onChanged: (_) => setState(() {}),
                    decoration: InputDecoration(
                      labelText: _target.quantityRequired
                          ? s.quantityRequired
                          : s.quantity,
                      border: const OutlineInputBorder(),
                      errorText:
                          errors.contains(
                            ComplaintRegisterError.quantityInvalid,
                          )
                          ? s.errorQuantity
                          : null,
                    ),
                  ),
                ],
                const SizedBox(height: 16),
                if (_failed)
                  Text(
                    s.failed,
                    key: const Key('cr-failed'),
                    style: TextStyle(color: scheme.error),
                  ),
                if (_registered)
                  Text(
                    s.registered,
                    key: const Key('cr-registered'),
                    style: TextStyle(color: scheme.primary),
                  ),
                const SizedBox(height: 8),
                ActionButtons(
                  primaryLabel: s.register,
                  primaryKey: const Key('cr-register'),
                  onPrimary: _saving ? null : _submit,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
