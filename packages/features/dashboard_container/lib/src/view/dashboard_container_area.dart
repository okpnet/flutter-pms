import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:page_mediator_extension/page_mediator_extension.dart';

import '../settings/dashboard_container_providers.dart';
import 'count_container_view.dart';

/// ダッシュボードに置く、コンテナの領域。
///
/// 表示するタイミングで、保存された配置を設定から読み込む。コンテナは大きさに応じた幅
/// (Full は 1、1/2 は 1/2、1/4 は 1/4)で並べる。狭い画面(モバイル)では、どれも横幅いっぱいにする
/// (表示する件数の項目の数は、大きさのとおり)。
class DashboardContainerArea extends ConsumerStatefulWidget {
  const DashboardContainerArea({
    super.key,
    this.spacing = 12,
    this.narrowWidth = 600,
  });

  final double spacing;

  /// この幅より狭いときは、どのコンテナも横幅いっぱいにする。
  final double narrowWidth;

  @override
  ConsumerState<DashboardContainerArea> createState() =>
      _DashboardContainerAreaState();
}

class _DashboardContainerAreaState extends ConsumerState<DashboardContainerArea>
    with PageMediatorMixin<DashboardContainerArea> {
  @override
  void initState() {
    super.initState();
    // 表示するタイミングで、設定から読み込む(保存が無ければ、いまの配置のまま)
    Future<void>.microtask(() async {
      await ref.read(dashboardContainersProvider.notifier).restore();
    });
  }

  @override
  Widget build(BuildContext context) {
    final containers = ref.watch(dashboardContainersProvider);
    final spacing = widget.spacing;
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final narrow = width < widget.narrowWidth;
        double widthOf(double fraction) {
          if (narrow || fraction >= 1) return width;
          final columns = 1 / fraction;
          return (width - spacing * (columns - 1)) / columns;
        }

        return Wrap(
          spacing: spacing,
          runSpacing: spacing,
          children: [
            for (final c in containers)
              SizedBox(
                key: ValueKey('container:${c.id}'),
                width: widthOf(c.size.fraction),
                child: CountContainerView(spec: c),
              ),
          ],
        );
      },
    );
  }
}
