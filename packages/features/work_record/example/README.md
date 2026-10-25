# work_record_example

作業実績 のビジュアルテスト(Windows 向け)。本番のアプリ(`apps/pms_app`)と同じ配線で、この機能だけを起動して画面を確認する。

```powershell
cd packages\features\work_record\example
flutter run -d windows
flutter test        # 起動と画面遷移の確認
```

画面を追加したら `lib/main.dart` の `entries` に遷移先を1行足す。
