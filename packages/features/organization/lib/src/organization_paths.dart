abstract class OrganizationPaths {
  static const organization = "/organization";
  static const company = "/companys";
  static const pickCompany = "$organization/$company";

  static String editCpmpany(String id) => "$company/$id";
}
