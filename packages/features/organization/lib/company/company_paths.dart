import 'package:organization/organization_paths.dart';

abstract class CompanyPaths {
  static const list = "${OrganizationPaths.path}/companys";
  static const editSegnebt = "edit";
  static const edit = "$list/$editSegnebt";
}
