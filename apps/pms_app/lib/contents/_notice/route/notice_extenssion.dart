import '../../../imports.dart';
import '../../_models/notice_model.dart';

extension NoticeExtenssion on GoRouter {
  ///お知らせへ遷移
  ///お知らせはUriパラメーターからStatusオブジェクトへ変換するため、
  ///[status]
  void toNotice<T extends INoticeModel>(String path, T status) {
    final maps = status.toMap();
    final query = Uri(path: path, queryParameters: maps);
    go(query.toString());
  }
}
