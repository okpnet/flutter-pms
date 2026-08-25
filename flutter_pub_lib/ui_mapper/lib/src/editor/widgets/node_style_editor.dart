// editor/widgets/node_style_editor.dart
import 'package:flutter/material.dart';

import '../../../grid.dart';
import '../../../model.dart';

class NodeStyleEditor extends StatelessWidget {
  final Map<Breakpoint, NodeBreakpointStyle?> draftStyles; // nullは継承中
  final GridConfig gridConfig;
  final void Function(Breakpoint, NodeBreakpointStyle?) onChanged;

  const NodeStyleEditor({
    super.key,
    required this.draftStyles,
    required this.gridConfig,
    required this.onChanged,
  });

  /// bpより手前(compact側)を遡り、最初に見つかった明示値を返す。
  /// DesignNode.resolveStyle と同じ考え方のチェーン解決に統一する。
  NodeBreakpointStyle _effectiveStyle(Breakpoint bp) {
    for (var i = bp.index; i >= 0; i--) {
      final candidate = draftStyles[Breakpoint.values[i]];
      if (candidate != null) return candidate;
    }
    return const NodeBreakpointStyle(width: 1); // compactが未設定の場合の保険
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: Breakpoint.values.map((bp) {
        final isInherited = bp != Breakpoint.compact && draftStyles[bp] == null;
        final effective = _effectiveStyle(bp);

        return ListTile(
          title: Text(bp.name),
          subtitle: isInherited ? const Text('前の区分を継承中') : null,
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (bp != Breakpoint.compact)
                Switch(
                  value: !isInherited,
                  onChanged: (overridden) => onChanged(
                    bp,
                    overridden ? effective : null, // オン=現在の実効値を明示値化、オフ=継承に戻す
                  ),
                ),
              SizedBox(
                width: 60,
                child: TextFormField(
                  key: ValueKey('${bp.name}_${effective.width}_$isInherited'),
                  enabled: bp == Breakpoint.compact || !isInherited,
                  initialValue: '${effective.width}',
                  keyboardType: TextInputType.number,
                  onChanged: (v) => onChanged(
                    bp,
                    effective.copyWith(
                      width: int.tryParse(v) ?? effective.width,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
