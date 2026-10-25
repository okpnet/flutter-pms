# shared_master_example

共有マスタ のビジュアルテスト(Windows 向け)。本番のアプリ(`apps/pms_app`)と同じ配線で、この機能だけを起動して画面を確認する。

```powershell
cd packages\features\shared_master\example
flutter run -d windows
flutter test        # 起動と画面遷移の確認
```

画面を追加したら `lib/main.dart` の `entries` に遷移先を1行足す。
