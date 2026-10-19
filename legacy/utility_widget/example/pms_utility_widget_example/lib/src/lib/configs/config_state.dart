import 'package:utility_widget/utiritiy_widget.dart';

import 'config_model.dart';

class ConfigState extends ChangeNotifier {
  ConfigModel _config;
  ConfigModel get config => _config;

  ConfigState(ConfigModel? config) : _config = config ?? ConfigModel();
}
