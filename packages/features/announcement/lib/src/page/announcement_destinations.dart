import 'package:baton_lib/baton_lib.dart';

/// 自分宛ての通知の一覧へ。
final class AnnouncementListDestination extends PageDestination<void> {
  const AnnouncementListDestination();
}

/// 登録漏れ検出用の見本。遷移先を追加したら、ここにも 1 件足す。
const List<PageDestination<Object?>> announcementDestinationSamples = [AnnouncementListDestination()];
