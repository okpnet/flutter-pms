abstract interface class IAuthUriModel {
  // Authorization URL
  Uri get authorizationUri;
  // Token URL
  Uri get tokenUri;
  // Logout URL
  Uri get logoutUri;
}
