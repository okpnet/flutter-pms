# CLAUDE.md

このファイルは、このリポジトリ（Flutterライブラリ `ui_mapper`）で作業するClaude Codeへの指示書です。

## プロジェクト概要

`ui_mapper` は、Flutterアプリ上でユーザーが画面デザインを行い、そのデザインをJSONとして保存・復元できるライブラリです。デザインは3段階のレスポンシブGridシステムのみで構成されます。**実際のWidget解決・グリッド描画はライブラリの責務ではなく、利用アプリ（および既存のレスポンシブGridライブラリ）に委ねます。**

詳細な設計判断の経緯は `docs/screen_designer_design_v3.md` を参照してください（このリポジトリに配置する場合）。実装で迷ったら、まずそちらの「9. 確定した設計判断」と「11. 実装検証で発見した不具合と修正」を確認してください。

## 現在の状態（引き継ぎ時点）

- 4パッケージ（model/grid/runtime/editor）の設計は一通り確定し、テスト実装で発見した不具合も概ね修正済み。
- **未反映の修正が1件あります**：`NodeEditDialog`でWidget種別選択時、name未選択のまま保存できてしまう問題（設計書 11.4）。修正案は提示済みだが、コードへの反映可否をユーザーに確認できていない。**次の作業として、まずこの対応方針をユーザーに確認すること。**
- 実際の `.dart` ソースファイルはこのリポジトリにまだ作成されていない可能性がある（チャット上でコード片として提示されたのみ）。設計書内のコードは最終版として扱ってよいが、実ファイルへの反映状況をまず確認すること。

## アーキテクチャ上の絶対ルール

これらはユーザーと合意済みの制約です。**変更する場合は必ず確認を取ってください。**

1. **依存は一方向**：`editor` と `runtime` は `grid` に依存でき、`grid` は `model` に依存できる。逆方向の依存、および `model`/`grid`/`runtime` から `editor` への依存は禁止。
2. **`model` / `grid` / `runtime` はFlutterの`Widget`型に一切依存しない。** import文に`package:flutter/material.dart`等が現れたら設計違反。
3. **`runtime` はWidgetを組み立てない。** `DesignDocument` + `GridConfig` から `ResolvedDesign`（純粋なデータ）を作るだけ。実際のWidget化・レイアウトはアプリの責務。
4. **`DesignDocument` に列数（columnCount）を持たせない。** 列数と幅しきい値は常に `GridConfig`（アプリ提供）側の責務。
5. **全体一括バレル（`lib/ui_mapper.dart`のような全export）は作らない。** 公開APIは `lib/model.dart` / `lib/grid.dart` / `lib/runtime.dart` / `lib/editor.dart` の4つのみ。
6. **`editor` は独自テーマを持たない。** 色・枠線・文字スタイルは常に `Theme.of(context)` から取得する。
7. **`DesignNode.name` はアプリ提供の `WidgetNameCatalog` からの選択式。** エディタUIで自由入力のテキストフィールドにしない（誤字防止のため）。

## モデルの重要な意味論

- `DesignNode(name != null)` → アプリが実行時に解決する実体Widget
- `DesignNode(name == null, children非空)` → 子を並べるコンテナ
- `DesignNode(name == null, children空)` → 何も描画しない空きセル（オフセット）。**新しいフィールドを追加して表現しない。**
- `NodeBreakpointStyle` の未指定区分（`styles`マップにキーがない）は、より小さい区分（compact側）を継承する。**`compact` は必須**（省略された場合は `FormatException`／`StateError`）。
- `Breakpoint` enumの宣言順（compact, medium, expanded）がそのまま継承順。並び替え禁止。

## パッケージ構成

```
lib/
├── model.dart / grid.dart / runtime.dart / editor.dart   // 公開バレル（この4つのみ）
└── src/
    ├── model/    // JSON定義・継承解決。他パッケージへの依存なし
    ├── grid/     // GridConfig, BreakpointResolver。modelにのみ依存
    ├── runtime/  // DesignDocument+GridConfig → ResolvedDesign。Widget非依存
    └── editor/   // デザインUI。ライブラリ内で唯一Flutter Widgetを組み立てる
        ├── design_editor_controller.dart  // ツリー操作の最小限プリミティブのみ
        ├── design_tree_utils.dart          // 非公開。find/detach/replace/depth系
        ├── design_canvas.dart              // 公開Widget、コンテナは再帰ネスト描画
        ├── widgets/                        // ダイアログ・パネル共通部品
        └── dialogs/                        // UX判断（ダイアログの見た目・一時状態）を集約
```

## editorパッケージの責務分離

**重要**: `DesignEditorController` にUX判断（ダイアログの見た目、入力途中のdraft状態、Widget種別の判定など）を持ち込まないこと。コントローラーは以下の汎用プリミティブのみを持ちます。

- `addNode` / `removeNode` / `renameNode` / `replaceNodeStyles` / `reorderChild`
- `mutateTree`（Undo履歴を積んだ上での任意編集の共通入口）
- `undo` / `redo`（JSON文字列スナップショット方式）

ダイアログでの「Widget/コンテナ/空きセルの選択」「保存前の一時状態（draft）」等は `editor/dialogs/node_edit_dialog.dart` に閉じ込め、保存時にのみコントローラーのプリミティブを呼び出す設計です。新しいUI機能を追加する際もこの分離を維持してください。

## エディタUIの既知の制約と理由

- **プロパティ編集は常設パネルではなくダイアログ形式。** 理由：`DesignCanvas` は親Widgetが幅を決めるため、自身の画面上の絶対位置を知らない。ドロワーのような常設UIの正確な表示位置を決められない。
- **ネスト段数に上限がある（`maxNestingDepth`、既定値 `3`、root直下=1段目）。** `addNode` と `CellDragController.moveNode` の両方でチェックしており、超過時は `NestingLimitExceededException` を投げる。UI側はこれをキャッチしてSnackBar等で通知すること。
- ドラッグ操作は `LongPressDraggable` を使用（単純な `Draggable` ではない）。理由：タップによる選択ジェスチャーとの競合を避けるため。

## コーディング規約

- Dartの相対importは同一フォルダ内のみで完結させ、フォルダをまたぐ参照は必ず公開バレル（`package:ui_mapper/model.dart` 等）経由にする。`src/`内部ファイルへの直接相対importは避ける。
- `DesignNode.name` や `styles` のようなfinalフィールドを書き換える必要がある場合、ノードを直接mutateせず `design_tree_utils.dart` の `replaceNodeInPlace` のように「同じ位置で新しいインスタンスに差し替える」方式を使う。
- 新しい例外を追加する場合、既存の `WidgetNameNotRegisteredException` / `NestingLimitExceededException` と同じ形式（`implements Exception` + `toString()`で日本語メッセージ）に揃える。

## テスト・実行時の注意（過去に発生した問題。詳細は設計書11節）

- `DesignEditorController` は `ChangeNotifier` を継承しているため、`StatefulWidget.build()` 内で毎回生成しないこと。`initState` で1回だけ生成し、`dispose()` で破棄する。
- `DesignCanvas` は `nameCatalog` を単独で受け取らない。`controller.nameCatalog` を内部で参照する（コンストラクタでの二重指定は不要）。
- `DesignNode` の通常コンストラクタ（`fromJson`ではない方）は`const`ではなく、本体で`compact`必須チェックを行う。`styles`にcompactを含めずに`DesignNode`を直接生成すると`ArgumentError`になるのは意図どおりの挙動。
- `NodeBreakpointStyle`の継承チェーンを解決するロジック（`DesignNode.resolveStyle`、および`editor/widgets/node_style_editor.dart`の`_effectiveStyle`）は、**必ず「該当区分から0まで遡って最初の明示値を返す」実装にすること。** 「1つ手前だけを見る」実装は、2段階遡る必要があるケース（例：expandedがmediumもcompactも継承している状態）で壊れる。同種のロジックを新たに書く場合はこの2箇所と同じ考え方に揃える。
- **`Stack` + `ConstrainedBox` の組み合わせに注意。** `Stack`の非配置子（`Positioned`でない子）に最小サイズを強制したい場合、`ConstrainedBox`は`Stack`の**外側ではなく**、対象のWidget（例：枠線を描く`Container`）に**直接**かけること。`Stack`は非配置子のサイズを制約を緩めた状態で個別に測ってから外形だけを揃えるため、外側にかけても内部のWidgetは0pxのままになりうる。`_CanvasCell`の`minCellExtent`実装が実例。
- `minCellExtent`のような「最小サイズ」パラメータは、再帰描画（`_NodeContent`がコンテナのとき`_CanvasRow`を再帰呼び出しする箇所）まで含めて全経路に伝播させること。1箇所でも渡し忘れると、ネストしたコンテナの中でだけ症状が再現する、発見しづらい不具合になる。

## ドキュメント更新について

このリポジトリの設計判断が変わった場合は、`docs/screen_designer_design_v3.md`（設計書）の「9. 確定した設計判断」「10. 未着手・今後の検討事項」「11. 実装検証で発見した不具合と修正」を合わせて更新してください。設計書とこの `CLAUDE.md` の内容に矛盾が生じないようにすること。
