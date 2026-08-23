/// このライブラリが読み書きできる最新のJSONスキーマバージョン。
/// DesignDocument.schemaVersion / DesignJsonCodecが参照する。
/// 将来スキーマを変更する際はここを更新し、
/// DesignJsonCodec側にマイグレーション処理を追加する。
const int currentSchemaVersion = 1;
