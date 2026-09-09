# 0015_生成物サイズ確認・.gitignore対応ログ

対象: 要件0012(build_runner実行)、またはGraphQLから`graphql_codegen`をとおして`build_runner`を
実行して生成したモデルのdartファイルのうち、サイズが5000KBを超えるもの、および
`schema.graphql.dart`(常に該当)を、必ずGitの無視リストに追加する(要件0015)。

## 確認内容

現時点(2026/09/09、要件0012再実行後)で`lib/postgraphile/`配下に生成されている
`*.graphql.dart`のサイズを確認した。

| ファイル | サイズ | 5000KB超過 |
|---|---|---|
| `lib/postgraphile/Company/company_edit.graphql.dart` | 110,768 bytes(約108.2KB) | 否 |
| `lib/postgraphile/Company/company_read.graphql.dart` | 170,166 bytes(約166.2KB) | 否 |
| `lib/postgraphile/schema.graphql.dart` | 423,423,549 bytes(約413,499.6KB / 約404MB) | **該当** |

## 対応

- `lib/postgraphile/schema.graphql.dart`は要件0014の時点ですでに`.gitignore`に追加済みであり、
  今回の要件0015が定める「5000KB超過ファイルは必ず無視リストに追加する」という一般ルールにも
  合致していることを確認した。追加の対応は不要。
- `company_edit.graphql.dart`・`company_read.graphql.dart`はいずれも5000KB未満のため、
  現時点では無視リストへの追加は不要(引き続きgit管理対象)。
- `.gitignore`のコメントを更新し、要件0015の一般ルール(5000KB超過ファイルは追加対象、
  `schema.graphql.dart`は常に対象)であることを明記した。また、判定時点(2026/09/09)の
  他生成物のサイズを参考情報として付記した。
- [CLAUDE.md](../CLAUDE.md)の[このライブラリの仕様](../CLAUDE.md#このライブラリの仕様)にも
  同様のルールを要件0015として追記した。

## 運用上の注意(低減処置)

`.gitignore`はファイルサイズを条件にした動的なパターン指定ができない(仕組み上の制約)ため、
このルールは**自動化できない**。そのため、要件0012(build_runner実行)を行うたびに、
生成された`*.graphql.dart`のサイズを確認し、5000KBを超えるものがあれば`.gitignore`に
個別のパスを追記する、という手動運用ルールとして扱う。これは
[0003_risk_assessment.md](0003_risk_assessment.md)の判定基準に照らすと、低減処置(運用ルール化)
で対応可能な項目である。
