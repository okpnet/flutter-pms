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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: Breakpoint.values.map((bp) {
        final isInherited = draftStyles[bp] == null && bp != Breakpoint.compact;
        final effective =
            draftStyles[bp] ??
            (bp == Breakpoint.compact
                ? const NodeBreakpointStyle(width: 1)
                : draftStyles[Breakpoint.values[bp.index - 1]]);
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
                    overridden ? effective : null, // オフ＝継承に戻す
                  ),
                ),
              SizedBox(
                width: 60,
                child: TextFormField(
                  enabled: bp == Breakpoint.compact || !isInherited,
                  initialValue: '${effective?.width ?? 1}',
                  keyboardType: TextInputType.number,
                  onChanged: (v) {
                    final width = int.tryParse(v) ?? 1;
                    onChanged(
                      bp,
                      (effective ?? const NodeBreakpointStyle(width: 1))
                          .copyWith(width: width),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
