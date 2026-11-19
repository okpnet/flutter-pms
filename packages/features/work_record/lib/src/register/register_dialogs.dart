import 'package:entity_screens/entity_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loadux_lib/loadux_lib.dart';

import '../i18n/strings.g.dart';
import 'container_picker_page.dart';
import 'register_gateway.dart';
import 'register_models.dart';

/// 入力の誤りの文。
String registerErrorText(WorkRecordStrings s, RegisterError e) =>
    switch (e) {
      RegisterError.required => s.register.error.required,
      RegisterError.notPositive => s.register.error.notPositive,
      RegisterError.overStock => s.register.error.overStock,
      RegisterError.overRemaining => s.register.error.overRemaining,
      RegisterError.overTaken => s.register.error.overTaken,
      RegisterError.notAvailable => s.register.error.notAvailable,
      RegisterError.reasonRequired => s.register.error.reasonRequired,
      RegisterError.overShortfall => s.register.error.overShortfall,
    };

/// ダイアログの枠。幅は、ボタンの文字がはみ出さないように広く取る(最大 760。狭い画面では画面の幅に合わせる)。
/// ボタンは、並びきらないときは折り返す(文字は 1 行・折り返さない)。
class RegisterDialogFrame extends StatelessWidget {
  const RegisterDialogFrame({
    super.key,
    required this.title,
    required this.child,
    required this.actions,
    this.busy = false,
  });

  /// ダイアログの標準の幅の上限。
  static const double maxWidth = 760;

  final String title;
  final Widget child;
  final List<Widget> actions;
  final bool busy;

  /// ボタンの文字が 1 行に収まる最小の幅。
  static Widget label(String text) =>
      Text(text, maxLines: 1, softWrap: false, overflow: TextOverflow.visible);

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.sizeOf(context).width;
    final width = (screen - 32).clamp(280.0, maxWidth);
    return Dialog(
      insetPadding: const EdgeInsets.all(16),
      child: SizedBox(
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 16),
              Flexible(child: SingleChildScrollView(child: child)),
              const SizedBox(height: 16),
              if (busy) const LoadingBar(),
              const SizedBox(height: 8),
              Wrap(
                alignment: WrapAlignment.end,
                spacing: 8,
                runSpacing: 8,
                children: actions,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// 数量の入力(−/＋・全量・数字入力)。
class QuantityField extends StatelessWidget {
  const QuantityField({
    super.key,
    required this.controller,
    required this.label,
    required this.max,
    required this.allLabel,
    this.errorText,
    this.autofocus = false,
    this.onSubmitted,
    this.onChanged,
  });

  final TextEditingController controller;
  final String label;

  /// 入力できる最大(全量のボタンで入る数)。
  final int max;
  final String allLabel;
  final String? errorText;
  final bool autofocus;
  final VoidCallback? onSubmitted;
  final VoidCallback? onChanged;

  void _set(int v) {
    final n = v.clamp(0, max < 0 ? 0 : max);
    controller.text = '$n';
    controller.selection = TextSelection.collapsed(offset: controller.text.length);
    onChanged?.call();
  }

  int get _value => int.tryParse(controller.text.trim()) ?? 0;

  @override
  Widget build(BuildContext context) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      IconButton.outlined(
        key: const ValueKey('qty:minus'),
        onPressed: () => _set(_value - 1),
        icon: const Icon(Icons.remove),
      ),
      const SizedBox(width: 8),
      Expanded(
        child: TextField(
          key: const ValueKey('qty:field'),
          controller: controller,
          autofocus: autofocus,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          textAlign: TextAlign.end,
          decoration: InputDecoration(
            labelText: label,
            errorText: errorText,
            isDense: true,
          ),
          onChanged: (_) => onChanged?.call(),
          onSubmitted: (_) => onSubmitted?.call(),
        ),
      ),
      const SizedBox(width: 8),
      IconButton.outlined(
        key: const ValueKey('qty:plus'),
        onPressed: () => _set(_value + 1),
        icon: const Icon(Icons.add),
      ),
      const SizedBox(width: 8),
      OutlinedButton(
        key: const ValueKey('qty:all'),
        onPressed: () => _set(max),
        child: RegisterDialogFrame.label(allLabel),
      ),
    ],
  );
}

/// 開始のダイアログ。既定のままなら「開始(コンテナ払出)」を 1 回押すだけ。
/// 「コンテナを変更・検索」で、コンテナの選択画面([ContainerPickerPage])へ移る。
/// 登録できたら [RegisterOutcome] を返して閉じる。
class StartDialog extends StatefulWidget {
  const StartDialog({
    super.key,
    required this.gateway,
    required this.step,
    required this.planNo,
    required this.scope,
    required this.strings,
    this.searchFirst = false,
  });

  final IWorkRegisterGateway gateway;
  final StepRow step;
  final String planNo;
  final EntityScope scope;
  final WorkRecordStrings strings;

  /// 開いたらすぐコンテナの選択画面へ(「探して開始」)。
  final bool searchFirst;

  @override
  State<StartDialog> createState() => _StartDialogState();
}

class _StartDialogState extends State<StartDialog> {
  final _qty = TextEditingController();
  StartDefaults? _defaults;
  String? _staffId;
  ContainerStock? _container;
  Map<String, RegisterError> _errors = {};
  String? _failure;
  Object? _loadError;
  bool _busy = false;

  WorkRecordStrings get s => widget.strings;

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    _qty.dispose();
    super.dispose();
  }

  Future<void> _load() async {
    try {
      final d = await widget.gateway.startDefaults(widget.step.id);
      if (!mounted) return;
      setState(() {
        _defaults = d;
        _staffId = d.defaultStaffId;
        _container = d.containers
            .where((c) => c.id == d.defaultContainerId)
            .firstOrNull;
        _qty.text = '$_max';
      });
      if (widget.searchFirst) await _pick();
    } catch (e) {
      if (mounted) setState(() => _loadError = e);
    }
  }

  /// 取り出せる最大 = コンテナの在庫と、計画の残りの小さい方。
  int get _max {
    final d = _defaults;
    final c = _container;
    if (d == null || c == null) return 0;
    return c.quantity < d.remaining ? c.quantity : d.remaining;
  }

  Future<void> _pick() async {
    final picked = await Navigator.of(context).push<ContainerStock>(
      MaterialPageRoute(
        builder: (_) => ContainerPickerPage(
          gateway: widget.gateway,
          stepId: widget.step.id,
          scope: widget.scope,
          strings: s,
        ),
      ),
    );
    if (picked == null || !mounted) return;
    setState(() {
      _container = picked;
      _errors = {};
      _qty.text = '$_max';
    });
  }

  Future<void> _submit() async {
    if (_busy || _defaults == null) return;
    final quantity = int.tryParse(_qty.text.trim()) ?? 0;
    setState(() {
      _busy = true;
      _errors = {};
      _failure = null;
    });
    try {
      final outcome = await widget.gateway.start(
        StartRequest(
          stepId: widget.step.id,
          staffId: _staffId ?? '',
          containerId: _container?.id ?? '',
          quantity: quantity,
        ),
      );
      if (mounted) Navigator.of(context).pop(outcome);
    } on RegisterValidationException catch (e) {
      if (mounted) setState(() => _errors = e.errors);
    } on RegisterFailedException catch (e) {
      if (mounted) setState(() => _failure = e.reason);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  String? _err(String key) {
    final e = _errors[key];
    return e == null ? null : registerErrorText(s, e);
  }

  @override
  Widget build(BuildContext context) {
    final d = _defaults;
    final title = s.register.start.title(process: widget.step.processName);
    final cancel = TextButton(
      key: const ValueKey('start:cancel'),
      onPressed: _busy ? null : () => Navigator.of(context).pop(),
      child: RegisterDialogFrame.label(s.register.action.cancel),
    );
    if (_loadError != null) {
      return RegisterDialogFrame(
        title: title,
        actions: [cancel],
        child: Text(s.register.loadFailed),
      );
    }
    if (d == null) {
      return RegisterDialogFrame(
        title: title,
        actions: [cancel],
        busy: true,
        child: const SizedBox(height: 80),
      );
    }
    final c = _container;
    return RegisterDialogFrame(
      title: title,
      busy: _busy,
      actions: [
        cancel,
        FilledButton(
          key: const ValueKey('start:submit'),
          onPressed: _busy || c == null ? null : _submit,
          child: RegisterDialogFrame.label(s.register.start.submit),
        ),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '${widget.planNo} / ${widget.step.sequence}. ${widget.step.processName}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 12),
          DropdownButtonFormField<String>(
            key: const ValueKey('start:staff'),
            initialValue: _staffId,
            decoration: InputDecoration(
              labelText: s.register.start.staff,
              errorText: _err('staff'),
              isDense: true,
            ),
            items: [
              for (final o in d.staffs)
                DropdownMenuItem(value: o.id, child: Text(o.label)),
            ],
            onChanged: _busy ? null : (v) => setState(() => _staffId = v),
          ),
          const SizedBox(height: 16),
          _containerCard(context, c, d),
          const SizedBox(height: 16),
          QuantityField(
            controller: _qty,
            label: s.register.start.quantity,
            max: _max,
            allLabel: s.register.start.quantityAll,
            errorText: _err('quantity'),
            autofocus: true,
            onSubmitted: _submit,
          ),
          if (c != null) ...[
            const SizedBox(height: 4),
            Text(
              s.register.start.quantityHint(
                max: _max,
                stock: c.quantity,
                remaining: d.remaining,
              ),
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
          if (_failure != null) ...[
            const SizedBox(height: 12),
            Text(
              s.register.error.failed(reason: _failure!),
              key: const ValueKey('start:failure'),
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          ],
        ],
      ),
    );
  }

  Widget _containerCard(BuildContext context, ContainerStock? c, StartDefaults d) {
    final theme = Theme.of(context);
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              s.register.start.container,
              style: theme.textTheme.labelMedium,
            ),
            const SizedBox(height: 4),
            if (c == null)
              Text(
                s.register.start.none,
                key: const ValueKey('start:none'),
                style: TextStyle(color: theme.colorScheme.error),
              )
            else
              Wrap(
                spacing: 8,
                runSpacing: 4,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text(
                    c.name,
                    key: const ValueKey('start:container'),
                    style: theme.textTheme.titleMedium,
                  ),
                  Text(c.location),
                  Text(c.contents),
                  Chip(
                    label: Text(s.register.start.stock(n: c.quantity)),
                    visualDensity: VisualDensity.compact,
                  ),
                  if (c.reserved)
                    Chip(
                      label: Text(s.register.start.reserved),
                      visualDensity: VisualDensity.compact,
                    ),
                ],
              ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: OutlinedButton(
                key: const ValueKey('start:change'),
                onPressed: _busy ? null : _pick,
                child: RegisterDialogFrame.label(s.register.start.change),
              ),
            ),
            if (_err('container') != null)
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  _err('container')!,
                  style: TextStyle(color: theme.colorScheme.error),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

/// 終了のダイアログ。完了数量が取り出した数量より少ないときは、意図的か不適合かを選ばせる。
/// 登録できたら [RegisterOutcome] を返して閉じる。
class FinishDialog extends StatefulWidget {
  const FinishDialog({
    super.key,
    required this.gateway,
    required this.step,
    required this.planNo,
    required this.strings,
  });

  final IWorkRegisterGateway gateway;
  final StepRow step;
  final String planNo;
  final WorkRecordStrings strings;

  @override
  State<FinishDialog> createState() => _FinishDialogState();
}

class _FinishDialogState extends State<FinishDialog> {
  final _done = TextEditingController();
  final _defectQty = TextEditingController();
  FinishContext? _ctx;
  String? _destination;
  bool? _intentional;
  String? _intentionalReason;
  String? _defectReason;
  String? _defectContainer;
  Map<String, RegisterError> _errors = {};
  String? _failure;
  Object? _loadError;
  bool _busy = false;

  WorkRecordStrings get s => widget.strings;

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    _done.dispose();
    _defectQty.dispose();
    super.dispose();
  }

  Future<void> _load() async {
    try {
      final c = await widget.gateway.finishContext(widget.step.id);
      if (!mounted) return;
      setState(() {
        _ctx = c;
        _destination = c.sourceContainerId;
        _done.text = '${c.taken}';
      });
    } catch (e) {
      if (mounted) setState(() => _loadError = e);
    }
  }

  int get _doneValue => int.tryParse(_done.text.trim()) ?? 0;
  int get _shortfall {
    final c = _ctx;
    if (c == null) return 0;
    final v = c.taken - _doneValue;
    return v < 0 ? 0 : v;
  }

  Future<void> _submit() async {
    if (_busy || _ctx == null) return;
    final shortfall = _shortfall;
    final errors = <String, RegisterError>{};
    if (shortfall > 0 && _intentional == null) {
      errors['shortfall'] = RegisterError.required;
    }
    if (errors.isNotEmpty) {
      setState(() => _errors = errors);
      return;
    }
    setState(() {
      _busy = true;
      _errors = {};
      _failure = null;
    });
    try {
      final intentional = shortfall > 0 ? _intentional : null;
      final outcome = await widget.gateway.finish(
        FinishRequest(
          stepId: widget.step.id,
          doneQuantity: _doneValue,
          destinationContainerId: _destination ?? '',
          intentional: intentional,
          intentionalReasonId: intentional == true ? _intentionalReason : null,
          defectQuantity: intentional == false
              ? int.tryParse(_defectQty.text.trim()) ?? 0
              : null,
          defectReasonId: intentional == false ? _defectReason : null,
          defectContainerId: intentional == false ? _defectContainer : null,
        ),
      );
      if (mounted) Navigator.of(context).pop(outcome);
    } on RegisterValidationException catch (e) {
      if (mounted) setState(() => _errors = e.errors);
    } on RegisterFailedException catch (e) {
      if (mounted) setState(() => _failure = e.reason);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  String? _err(String key) {
    final e = _errors[key];
    if (e == null) return null;
    if (key == 'shortfall') return s.register.error.shortfallRequired;
    return registerErrorText(s, e);
  }

  @override
  Widget build(BuildContext context) {
    final title = s.register.finish.title(process: widget.step.processName);
    final cancel = TextButton(
      key: const ValueKey('finish:cancel'),
      onPressed: _busy ? null : () => Navigator.of(context).pop(),
      child: RegisterDialogFrame.label(s.register.action.cancel),
    );
    if (_loadError != null) {
      return RegisterDialogFrame(
        title: title,
        actions: [cancel],
        child: Text(s.register.loadFailed),
      );
    }
    final c = _ctx;
    if (c == null) {
      return RegisterDialogFrame(
        title: title,
        actions: [cancel],
        busy: true,
        child: const SizedBox(height: 80),
      );
    }
    final shortfall = _shortfall;
    return RegisterDialogFrame(
      title: title,
      busy: _busy,
      actions: [
        cancel,
        FilledButton(
          key: const ValueKey('finish:submit'),
          onPressed: _busy ? null : _submit,
          child: RegisterDialogFrame.label(s.register.finish.submit),
        ),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '${widget.planNo} / ${widget.step.sequence}. ${widget.step.processName}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 4),
          Text(
            s.register.finish.taken(
              n: c.taken,
              container: c.sourceContainerName,
            ),
            key: const ValueKey('finish:taken'),
          ),
          const SizedBox(height: 12),
          QuantityField(
            controller: _done,
            label: s.register.finish.done,
            max: c.taken,
            allLabel: s.register.start.quantityAll,
            errorText: _err('done'),
            autofocus: true,
            onSubmitted: _submit,
            onChanged: () => setState(() {
              if (_shortfall == 0) _intentional = null;
              final d = _defectQty.text.trim();
              if (_intentional == false && d.isEmpty) {
                _defectQty.text = '$_shortfall';
              }
            }),
          ),
          const SizedBox(height: 12),
          DropdownButtonFormField<String>(
            key: const ValueKey('finish:destination'),
            initialValue: _destination,
            decoration: InputDecoration(
              labelText: s.register.finish.destination,
              errorText: _err('destination'),
              isDense: true,
            ),
            items: [
              for (final b in c.containers)
                DropdownMenuItem(
                  value: b.id,
                  child: Text('${b.name}  ${b.location}'),
                ),
            ],
            onChanged: _busy ? null : (v) => setState(() => _destination = v),
          ),
          if (shortfall > 0) ..._shortfallSection(context, c, shortfall),
          if (_failure != null) ...[
            const SizedBox(height: 12),
            Text(
              s.register.error.failed(reason: _failure!),
              key: const ValueKey('finish:failure'),
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          ],
        ],
      ),
    );
  }

  List<Widget> _shortfallSection(
    BuildContext context,
    FinishContext c,
    int shortfall,
  ) {
    final theme = Theme.of(context);
    final err = _err('shortfall');
    return [
      const SizedBox(height: 16),
      Text(
        s.register.finish.shortfall(n: shortfall),
        key: const ValueKey('finish:shortfall'),
        style: theme.textTheme.titleSmall,
      ),
      const SizedBox(height: 8),
      SegmentedButton<bool>(
        key: const ValueKey('finish:kind'),
        emptySelectionAllowed: true,
        showSelectedIcon: false,
        segments: [
          ButtonSegment(
            value: true,
            label: RegisterDialogFrame.label(s.register.finish.intentional),
          ),
          ButtonSegment(
            value: false,
            label: RegisterDialogFrame.label(s.register.finish.nonconforming),
          ),
        ],
        selected: {?_intentional},
        onSelectionChanged: _busy
            ? null
            : (v) => setState(() {
                _intentional = v.isEmpty ? null : v.first;
                if (_intentional == false && _defectQty.text.trim().isEmpty) {
                  _defectQty.text = '$shortfall';
                }
              }),
      ),
      if (err != null)
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(err, style: TextStyle(color: theme.colorScheme.error)),
        ),
      const SizedBox(height: 12),
      if (_intentional == true) ...[
        DropdownButtonFormField<String>(
          key: const ValueKey('finish:intentionalReason'),
          initialValue: _intentionalReason,
          decoration: InputDecoration(
            labelText: s.register.finish.intentionalReason,
            errorText: _err('intentionalReason'),
            isDense: true,
          ),
          items: [
            for (final o in c.intentionalReasons)
              DropdownMenuItem(value: o.id, child: Text(o.label)),
          ],
          onChanged: _busy
              ? null
              : (v) => setState(() => _intentionalReason = v),
        ),
        const SizedBox(height: 4),
        Text(
          s.register.finish.intentionalNote,
          style: theme.textTheme.bodySmall,
        ),
      ],
      if (_intentional == false) ...[
        TextField(
          key: const ValueKey('finish:defectQty'),
          controller: _defectQty,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          textAlign: TextAlign.end,
          decoration: InputDecoration(
            labelText: s.register.finish.defectQuantity,
            errorText: _err('defectQuantity'),
            isDense: true,
          ),
          onChanged: (_) => setState(() {}),
        ),
        const SizedBox(height: 12),
        DropdownButtonFormField<String>(
          key: const ValueKey('finish:defectReason'),
          initialValue: _defectReason,
          decoration: InputDecoration(
            labelText: s.register.finish.defectReason,
            errorText: _err('defectReason'),
            isDense: true,
          ),
          items: [
            for (final o in c.defectReasons)
              DropdownMenuItem(value: o.id, child: Text(o.label)),
          ],
          onChanged: _busy ? null : (v) => setState(() => _defectReason = v),
        ),
        const SizedBox(height: 12),
        DropdownButtonFormField<String>(
          key: const ValueKey('finish:defectContainer'),
          initialValue: _defectContainer,
          decoration: InputDecoration(
            labelText: s.register.finish.defectContainer,
            errorText: _err('defectContainer'),
            isDense: true,
          ),
          items: [
            for (final b in c.containers)
              DropdownMenuItem(
                value: b.id,
                child: Text('${b.name}  ${b.location}'),
              ),
          ],
          onChanged: _busy
              ? null
              : (v) => setState(() => _defectContainer = v),
        ),
        Builder(
          builder: (context) {
            final defect = int.tryParse(_defectQty.text.trim()) ?? 0;
            final rest = shortfall - defect;
            if (rest <= 0) return const SizedBox.shrink();
            return Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                s.register.finish.returnNote(n: rest),
                style: theme.textTheme.bodySmall,
              ),
            );
          },
        ),
      ],
    ];
  }
}

/// 登録結果(DB の更新結果)のダイアログ。
class OutcomeDialog extends StatelessWidget {
  const OutcomeDialog({super.key, required this.outcome, required this.strings});

  final RegisterOutcome outcome;
  final WorkRecordStrings strings;

  @override
  Widget build(BuildContext context) {
    final o = outcome;
    final s = strings.register.outcome;
    final lines = <String>[
      s.result(no: o.resultNo, round: o.round),
      o.started
          ? s.issuedFrom(container: o.containerName, n: o.quantity)
          : s.issuedTo(container: o.containerName, n: o.quantity),
      if (o.defectNo != null)
        s.defect(
          no: o.defectNo!,
          n: o.defectQuantity,
          container: o.defectContainerName ?? '',
        ),
      if (o.returnedQuantity > 0)
        s.returned(
          container: o.returnedContainerName ?? '',
          n: o.returnedQuantity,
        ),
      if (o.stepCompleted) s.stepCompleted,
      s.updated(n: o.updatedCount),
    ];
    return RegisterDialogFrame(
      title: o.started ? s.startedTitle : s.finishedTitle,
      actions: [
        FilledButton(
          key: const ValueKey('outcome:close'),
          autofocus: true,
          onPressed: () => Navigator.of(context).pop(),
          child: RegisterDialogFrame.label(strings.register.action.close),
        ),
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (final line in lines)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Text(line),
            ),
        ],
      ),
    );
  }
}
