# 物理カード（認証カード・社員証など）でのログイン方式 調査

> 調査のみ（2026-11 時点）。実装は未着手。

## 結論（先に要点）

- **PocketBase に「カードでログインする機能」は標準ではありません。** 公式ドキュメントにある認証方式は Password / OTP / OAuth2 / MFA だけです。
- ただし **独自APIルート（pb_hooks）で照合してから、PocketBase の通常の認証トークンを発行する** ことはできます。こうすると、セッション管理（`ensureSession()` / auth-refresh）は今の仕組みをそのまま使えます。
- 社内の共用端末で使うなら、**段階1：社員証の ID（FeliCa IDm / MIFARE UID）＋ PIN** が現実的です。より強いセキュリティが必要になったら、**段階2：暗号認証できるカード（DESFire など）または FIDO2 キー** へ移ります。
- **マイナンバーカード（JPKI）** は国の認定手続きが必要です。社内アプリには負担が大きすぎるので、対象外を推奨します。

## 方式の比較

| # | 方式 | カード例 | 安全性 | 実装難度 | PocketBase 連携 |
|---|---|---|---|---|---|
| A | カードID（UID/IDm）＋ PIN | FeliCa 社員証、交通系IC、MIFARE | 低〜中（IDは秘密情報ではなく、複製・なりすましができる。PINと端末制限で補う） | 低 | 独自ルートで照合 → トークン発行 |
| B | カード内の暗号認証（チャレンジ・レスポンス） | MIFARE DESFire EV2/EV3（AES）、FeliCa の MAC 付き読み出し | 高（複製されにくい） | 中〜高（カードの鍵管理・発行作業が必要） | 独自ルート（または Go で拡張） |
| C | FIDO2 セキュリティキー／パスキー（NFC/USB） | YubiKey などの NFC 対応キー | 最高（フィッシングに強い） | 中〜高 | 標準では非対応。第三者製の拡張か、Go 拡張（WebAuthn ライブラリ）が必要 |
| D | スマートカード証明書（PIV、クライアント証明書を使う TLS） | PIV カード、社内 PKI で発行した IC カード | 高 | 高（社内 PKI が必要） | Caddy で証明書を検証 → ヘッダで連携 |
| E | マイナンバーカード（JPKI 利用者証明用電子証明書） | マイナンバーカード | 高 | 非常に高（主務大臣の認定、または認定事業者のサービス利用が必要） | 外部サービス経由 |

## 端末・読み取り手段（Flutter）

| 端末 | 手段 | 備考 |
|---|---|---|
| Android | `nfc_manager`（NfcF / MIFARE） | FeliCa の IDm と MIFARE の UID を読める |
| iOS | `nfc_manager`（FeliCaIos / MiFareIos / Iso7816Ios） | FeliCa を読むには Info.plist にシステムコード（`com.apple.developer.nfc.readersession.felica.systemcodes`）と NFC の entitlement が必要 |
| Windows / Linux | PC/SC（`dart_pcsc` など）＋ USB リーダー（例：PaSoRi） | APDU を送受信できる。Windows デスクトップ版の Flutter で使える |
| どの端末でも | **キーボードとして入力するタイプの USB リーダー** | カードをかざすと UID が文字として入力される。アプリ側は TextField だけで済み、PoC に最適。ただし B〜D の方式には使えない |

## 方式A を PocketBase で実装する場合の構想（未実装）

```
[共用端末アプリ] ──カードUID + PIN + 端末キー──▶ POST /api/app/card-auth
                                                    │ 1) 端末キーが登録済みか確認（登録端末だけ許可）
                                                    │ 2) カードUIDのハッシュでカードを検索
                                                    │ 3) PIN を照合（ハッシュで保存しておく）
                                                    │ 4) 失敗回数を数え、規定回数でロック（レート制限も併用）
                                                    ▼
                                        $apis.recordAuthResponse(...) → 通常の auth token
```

- 新しいコレクション案：
  - `auth_cards`：user、card_uid_hash、pin_hash、enabled、last_used
  - `devices`：端末キーのハッシュ、設置場所、enabled
- カードの登録：管理者が行う。または本人がパスワードでログインした後に「カードを登録」する。
- 発行されるトークンは通常ログインと同じものです。招待制・共有ファイル・セッション確認の仕組みには影響しません。
- 共用端末向けに、`PB_AUTH_TOKEN_DURATION` を短くする（例：数時間）など、端末の種類ごとにトークン有効期間を分けることを検討します。

## 注意点

- **カードIDは「パスワード」ではなく「ユーザー名」に近いものです。** IDm／UID は誰でも読めます。スマートフォンでエミュレート（なりすまし）できる場合もあるので、ID だけでログインさせないでください。
- MIFARE Classic（Crypto1）は暗号が破られています。暗号認証が必要なら DESFire EV2/EV3 を選びます。
- マイナンバーカードの民間利用は主務大臣の認定が前提です。2026年8月25日に「デジタル認証アプリ」が「マイナアプリ」に統合され、名称が「デジタル認証サービス」に変わっています。
- パスキー／FIDO2 の Flutter 対応は、デスクトップ（Windows）で制約があります。実機での確認が必要です。

## 次の検討事項（実装に進む場合）

1. 対象のカード（いま使っている社員証の規格）と端末（共用 PC／タブレット／個人スマホ）を確定する
2. 必要な安全性のレベル：方式A（PIN と端末制限で補う）で足りるかどうか
3. キーボード入力型の USB リーダーで方式A の PoC を作る

## 参考

- PocketBase Authentication: https://pocketbase.io/docs/authentication/
- nfc_manager: https://pub.dev/documentation/nfc_manager/latest
- dart_pcsc: https://pub.dev/documentation/dart_pcsc
- flutter_pcsc_windows: https://pub.dev/packages/flutter_pcsc_windows/score
- pocketbase-passkey（第三者製）: https://www.pkgstats.com/pkg:pocketbase-passkey
- デジタル庁 マイナンバーカードの民間ビジネスでの利用: https://www.digital.go.jp/policies/mynumber/private-business
