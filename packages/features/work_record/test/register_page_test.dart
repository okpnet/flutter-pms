// 実績登録の画面: 生産計画の表の子の表に工程計画明細を出し、開始・終了・コンテナの検索をダイアログで行う。
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:theme_lib/theme_lib.dart';
import 'package:work_record/src/register/in_memory_register_gateway.dart';
import 'package:work_record/src/register/register_dialogs.dart';
import 'package:work_record/src/register/register_gateway.dart';
import 'package:work_record/src/register/register_models.dart';
import 'package:work_record/work_record.dart';
import 'package:work_record/work_record_api.dart';

Future<InMemoryWorkRegisterGateway> _open(
  WidgetTester tester, {
  Size size = const Size(1800, 1400),
  InMemoryWorkRegisterGateway? gateway,
}) async {
  tester.view.devicePixelRatio = 1.0;
  tester.view.physicalSize = size;
  addTearDown(tester.view.reset);
  final g = gateway ?? InMemoryWorkRegisterGateway();
  await tester.pumpWidget(
    FeatureHost(
      title: '実績登録',
      modules: const [WorkRecordModule()],
      entries: const [FeatureHostEntry('実績登録へ', WorkRegisterDestination())],
      logger: const NoopLoggerProvider(),
      overrides: [
        themeLoggerProvider.overrideWithValue(const NoopLoggerProvider()),
        workRegisterGatewayProvider.overrideWithValue(g),
      ],
    ),
  );
  await tester.pumpAndSettle();
  await tester.tap(find.text('実績登録へ'));
  await tester.pumpAndSettle();
  return g;
}

/// 生産計画 [row] 行目の子の表(工程計画明細)を開く。
Future<void> _expand(WidgetTester tester, int row) async {
  await tester.tap(find.byKey(Key('child.$row')));
  await tester.pumpAndSettle();
}

/// 台帳の行は、ダブルクリック(300ms 以内にもう一度タップ)で開く(選択画面も同じ)。
Future<void> _doubleTap(WidgetTester tester, Finder f) async {
  await tester.tap(f);
  await tester.pump(const Duration(milliseconds: 50));
  await tester.tap(f);
  await tester.pumpAndSettle();
}

Future<void> _tapKey(WidgetTester tester, String key) async {
  final f = find.byKey(ValueKey(key));
  await tester.ensureVisible(f);
  await tester.tap(f);
  await tester.pumpAndSettle();
}

/// 田中 太郎が、1 工程目に C-001 から 60 を取り出して実施中にした状態。
Future<InMemoryWorkRegisterGateway> _started() async {
  final g = InMemoryWorkRegisterGateway();
  await g.start(
    const StartRequest(
      stepId: 'p1-1',
      staffId: 's1',
      containerId: 'c1',
      quantity: 60,
    ),
  );
  return g;
}

void main() {
  testWidgets('生産計画の表の中に、工程計画明細の子の表が出る(別の表に分けない)', (tester) async {
    await _open(tester);
    expect(find.text('PP-0001'), findsOneWidget);
    expect(find.text('PP-0002'), findsOneWidget);
    expect(find.byKey(const ValueKey('start:p1-1')), findsNothing);
    await _expand(tester, 0);
    expect(find.text('切断'), findsOneWidget);
    expect(find.text('旋削'), findsOneWidget);
    expect(find.text('未着手'), findsNWidgets(3));
    expect(find.byKey(const ValueKey('start:p1-1')), findsOneWidget);
    expect(find.byKey(const ValueKey('search:p1-1')), findsOneWidget);
    expect(find.byKey(const ValueKey('history:p1-1')), findsOneWidget);
  });

  testWidgets('開始: 既定のまま「開始(コンテナ払出)」を 1 回押すだけ。結果の更新内容が出る', (tester) async {
    final g = await _open(tester);
    await _expand(tester, 0);
    await _tapKey(tester, 'start:p1-1');
    // 既定: 引当のあるコンテナ・取り出せる最大(コンテナの在庫 80、計画の残り 100)
    expect(find.byKey(const ValueKey('start:container')), findsOneWidget);
    expect(find.text('C-002'), findsOneWidget);
    expect(
      tester.widget<TextField>(find.byKey(const ValueKey('qty:field'))).controller!.text,
      '80',
    );
    await _tapKey(tester, 'start:submit');
    expect(find.text('開始を登録しました'), findsOneWidget);
    expect(find.text('実績 WR-0001(第1回)'), findsOneWidget);
    expect(find.text('C-002 から 80 を払い出しました'), findsOneWidget);
    await _tapKey(tester, 'outcome:close');
    final step = (await g.plans()).first.steps.first;
    expect(step.inProgress, isTrue);
    // 登録のあと、表が更新されている(実施中)
    await _expand(tester, 0);
    expect(find.text('実施中'), findsOneWidget);
    expect(find.byKey(const ValueKey('finish:p1-1')), findsOneWidget);
    expect(find.byKey(const ValueKey('start:p1-1')), findsNothing);
  });

  testWidgets('開始の数量: 全量・−/＋・上限の検証', (tester) async {
    await _open(tester);
    await _expand(tester, 0);
    await _tapKey(tester, 'start:p1-1');
    String qty() => tester
        .widget<TextField>(find.byKey(const ValueKey('qty:field')))
        .controller!
        .text;
    await _tapKey(tester, 'qty:minus');
    expect(qty(), '79');
    await _tapKey(tester, 'qty:plus');
    await _tapKey(tester, 'qty:plus');
    expect(qty(), '80', reason: '上限(取り出せる最大)を超えない');
    await tester.enterText(find.byKey(const ValueKey('qty:field')), '5');
    await _tapKey(tester, 'qty:all');
    expect(qty(), '80');
    await tester.enterText(find.byKey(const ValueKey('qty:field')), '0');
    await _tapKey(tester, 'start:submit');
    expect(find.text('1 以上を入力してください。'), findsOneWidget);
  });

  testWidgets('コンテナを変更・検索: コンテナ画面へ移り、取り出せないものは選べない', (tester) async {
    await _open(tester);
    await _expand(tester, 0);
    await _tapKey(tester, 'start:p1-1');
    await _tapKey(tester, 'start:change');
    expect(find.text('コンテナの選択'), findsWidgets);
    // 生産計画に紐づく材料のコンテナが先、取り出せないコンテナは理由つき
    expect(find.text('C-001'), findsOneWidget);
    expect(find.text('C-003'), findsOneWidget);
    expect(find.text('この注文の材料ではありません'), findsNWidgets(2), reason: 'C-003・C-005');
    expect(find.text('在庫がありません'), findsOneWidget);
    await _doubleTap(tester, find.text('C-003'));
    expect(find.byType(SnackBar), findsOneWidget, reason: '取り出せない理由を知らせる');
    expect(find.text('コンテナの選択'), findsWidgets, reason: '選べないので画面に残る');
    await _doubleTap(tester, find.text('C-001'));
    // 開始のダイアログに戻り、選んだコンテナと数量(在庫 120・計画の残り 100 → 100)
    expect(find.byKey(const ValueKey('start:container')), findsOneWidget);
    expect(find.text('C-001'), findsOneWidget);
    expect(
      tester.widget<TextField>(find.byKey(const ValueKey('qty:field'))).controller!.text,
      '100',
    );
  });

  testWidgets('探して開始: 開いてすぐコンテナ画面へ', (tester) async {
    await _open(tester);
    await _expand(tester, 0);
    await _tapKey(tester, 'search:p1-1');
    expect(find.text('コンテナの選択'), findsWidgets);
    expect(find.text('C-001'), findsOneWidget);
  });

  testWidgets('終了のダイアログ: 完了数量を減らすと差の区分が出る。意図的の理由を選んで登録できる', (tester) async {
    await _open(tester, gateway: await _started());
    await _expand(tester, 0);
    await _tapKey(tester, 'finish:p1-1');
    expect(find.text('取り出した数量 60(払出元 C-001)'), findsOneWidget);
    expect(find.byKey(const ValueKey('finish:kind')), findsNothing, reason: '差が無いうちは区分を出さない');
    await tester.enterText(find.byKey(const ValueKey('qty:field')), '40');
    await tester.pumpAndSettle();
    expect(find.text('完了数量が取り出した数量より 20 少ない'), findsOneWidget);
    // 区分を選ばずに登録すると、選ぶよう促す
    await _tapKey(tester, 'finish:submit');
    expect(find.text('意図的か不適合かを選んでください。'), findsOneWidget);
    await tester.tap(find.text('意図的'));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('finish:intentionalReason')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('日またぎ').last);
    await tester.pumpAndSettle();
    await _tapKey(tester, 'finish:submit');
    expect(find.text('終了を登録しました'), findsOneWidget);
    expect(find.text('C-001 へ 40 を払い出しました'), findsOneWidget);
    expect(find.text('C-001 へ 20 を返しました'), findsOneWidget);
  });

  testWidgets('不適合: 工程異常として、数量・理由・コンテナを選んで登録する', (tester) async {
    await _open(tester, gateway: await _started());
    await _expand(tester, 0);
    await _tapKey(tester, 'finish:p1-1');
    await tester.enterText(find.byKey(const ValueKey('qty:field')), '40');
    await tester.pumpAndSettle();
    await tester.tap(find.text('不適合'));
    await tester.pumpAndSettle();
    // 不適合の数量の既定は差の全量
    expect(
      tester.widget<TextField>(find.byKey(const ValueKey('finish:defectQty'))).controller!.text,
      '20',
    );
    await tester.enterText(find.byKey(const ValueKey('finish:defectQty')), '15');
    await tester.pumpAndSettle();
    expect(find.text('不適合に満たない 5 は払出元へ返します。'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('finish:defectReason')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('寸法不良').last);
    await tester.pumpAndSettle();
    // コンテナを選ばずに登録 → 検証エラー
    await _tapKey(tester, 'finish:submit');
    expect(find.text('入力してください。'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('finish:defectContainer')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('C-005  C棚-1').last);
    await tester.pumpAndSettle();
    await _tapKey(tester, 'finish:submit');
    expect(find.textContaining('工程異常 NC-0001'), findsOneWidget);
    expect(find.text('C-001 へ 5 を返しました'), findsOneWidget);
  });

  testWidgets('登録に失敗したときは理由を出し、入力を残して再試行できる', (tester) async {
    final g = await _open(tester);
    g.failNext = true;
    await _expand(tester, 0);
    await _tapKey(tester, 'start:p1-1');
    await _tapKey(tester, 'start:submit');
    expect(find.byKey(const ValueKey('start:failure')), findsOneWidget);
    expect(find.textContaining('サーバーの更新に失敗しました'), findsOneWidget);
    expect(
      tester.widget<TextField>(find.byKey(const ValueKey('qty:field'))).controller!.text,
      '80',
      reason: '入力は残る',
    );
    await _tapKey(tester, 'start:submit');
    expect(find.text('開始を登録しました'), findsOneWidget);
  });


  testWidgets('ダイアログの幅: 狭い画面でもボタンの文字がはみ出さず、折り返して並ぶ', (tester) async {
    tester.view.devicePixelRatio = 1.0;
    tester.view.physicalSize = const Size(360, 700);
    addTearDown(tester.view.reset);
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: RegisterDialogFrame(
            title: '終了: 旋削',
            actions: [
              TextButton(
                onPressed: () {},
                child: RegisterDialogFrame.label('キャンセル'),
              ),
              FilledButton(
                onPressed: () {},
                child: RegisterDialogFrame.label('終了を登録(コンテナ払出)'),
              ),
            ],
            child: const Text('本文'),
          ),
        ),
      ),
    );
    expect(tester.takeException(), isNull, reason: 'はみ出し(RenderFlex overflow)が無い');
    final frame = tester.getSize(find.byType(SizedBox).first);
    expect(frame.width, lessThanOrEqualTo(360));
  });
}
