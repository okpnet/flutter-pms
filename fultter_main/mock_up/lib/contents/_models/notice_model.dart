///お知らせモデルインターフェイス
abstract interface class INoticeModel {
  String get message;
  Map<String, dynamic> toMap();
}
