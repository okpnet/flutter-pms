export 'package:entity_screens/entity_screens.dart' show MoneyFormat, MoneyPosition, MoneyStyle;
import 'package:entity_screens/entity_screens.dart' show MoneyFormat;
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 金額(`FieldDefinition.money`)の通貨の表示(記号と位置。言語ごと)。既定は日本円(日本語は「1,200 円」、英語は「¥1,200」)。
/// アプリが、アプリの設定(`info_app.settings` の `currency`)で上書きする。表示だけを変え、値は変えない(換算しない)。
final moneyFormatProvider = Provider<MoneyFormat>((ref) => MoneyFormat.standard);
