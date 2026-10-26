import 'package:feature_shared/feature_shared.dart' show PageDestination;
import 'package:app_core/app_core_api.dart';

import '../../contents/_models/error/specific_error.dart';
import 'feature_modules.dart';

///遷移先[destination]を所有する機能が返すパス。どの機能も所有しなければ例外。
String featureLocationOf(PageDestination<Object?> destination) {
  for (final module in featureModules) {
    final location = module.locationOf(destination);
    if (location != null) return location;
  }
  throw StateError('どの機能にも登録されていない遷移先: ${destination.runtimeType}');
}

///エラー画面(app_core)へのパス。エラーは種類(型と番号)で渡し、文言にしない。
String errorLocationOf(SpecificError error) => featureLocationOf(
  ErrorDestination(
    message:
        '${error.type.name}:${error.code}'
        '${error.message == null ? '' : ' ${error.message}'}',
  ),
);
