# selection_result の使い方

## 選択を返す遷移の決まり
1. 選択画面は、選んだ行を`Selection`にして`Navigator.pop`で返す。取り消しは null。
2. 返すのは、対象の種類(`entityKey`)と一意な`id`が中心。呼び出し元は`id`でモデルを引く(生成されたモデルは機能の外へ出さない)。
3. 表示名(`label`)を添えるので、呼び出し元は選択直後に引き直さずに表示できる。さらに必要な値は`values`(文字列)に入れる。
4. 保存・送信など、データ効率が必要なときは`encode()`(短いキーの JSON)を使い、`Selection.decode()`で戻す。

## 実体の選択(feature_shared)
`EntityPickerDestination(entityKey)`は`Selection?`を返す。`entityKey`は実体のキーのほか、別名(例: `supplier`・`customer`)が使える。別名は、実体の台帳を役割で絞って開く(`EntityFeatureModule.pickAliases`)。見出しは「<名称>の選択」(`pickTitle`で差し替え)。
