import 'package:utility_widget/utiritiy_widget.dart';

import 'search_result_info_model.dart';

class SearchResultInfoState extends ChangeNotifier {
  // ignore: prefer_final_fields
  SearchResultInfoModel _model;

  SearchResultInfoModel get model => _model;

  SearchResultInfoState() : _model = SearchResultInfoModel();

  void set(SearchResultInfoModel model) {
    notifyListeners();
  }
}
