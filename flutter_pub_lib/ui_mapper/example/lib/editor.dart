import 'package:flutter/material.dart';
import 'package:ui_mapper/editor.dart';
import 'package:ui_mapper/grid.dart';
import 'package:ui_mapper/model.dart';

class Editor extends StatefulWidget {
  final WidgetNameCatalog catalog = WidgetNameCatalog(
    entries: [
      WidgetNameEntry(name: 'test1', label: 'TEST1'),
      WidgetNameEntry(name: 'test2', label: 'TEST2'),
      WidgetNameEntry(name: 'test3', label: 'TEST3'),
    ],
  );
  Editor({super.key});

  @override
  State<StatefulWidget> createState() => _Editor();
}

class _Editor extends State<Editor> {
  late final DesignEditorController controller;

  @override
  void initState() {
    super.initState();
    controller = DesignEditorController(
      initialDocument: const DesignDocument(
        schemaVersion: currentSchemaVersion,
        rootNodes: [],
      ),
      previewGridConfig: GridConfig(
        specs: {
          Breakpoint.compact: const BreakpointSpec(minWidth: 0, columnCount: 4),
          Breakpoint.medium: const BreakpointSpec(
            minWidth: 100,
            columnCount: 8,
          ),
          Breakpoint.expanded: const BreakpointSpec(
            minWidth: 200,
            columnCount: 12,
          ),
        },
      ),
      nameCatalog: widget.catalog,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _onAddPressed() async {
    final selected = await showMenu<String?>(
      context: context,
      position: const RelativeRect.fromLTRB(100, 100, 0, 0),
      items: [
        ...widget.catalog.entries.map(
          (e) => PopupMenuItem(value: e.name, child: Text(e.label)),
        ),
        const PopupMenuItem(value: null, child: Text('空きセル')),
      ],
    );
    // メニューを開いたままキャンセルされた場合はnullが返らずshowMenu自体が null を返す点に注意。
    // 「空きセル」自体もnameがnullなので、キャンセルと区別できない。
    // ここでは簡略化のため区別せず、選択があった場合のみ追加する。
    controller.addNode(name: selected);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Editor'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              ElevatedButton.icon(
                label: Text('追加'),
                icon: Icon(Icons.post_add_sharp),
                onPressed: _onAddPressed,
              ),
            ],
          ),
          DesignCanvas(controller: controller), //コントローラーでもカタログを要求するので冗長
        ],
      ),
    );
  }
}
