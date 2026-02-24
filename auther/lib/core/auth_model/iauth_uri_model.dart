abstract interface class IAuthUriModel {
  // Authorization URL
  Uri get authorizationUrl;
  // Token URL
  Uri get tokenUrl;
  // Logout URL
  Uri get logoutUrl;
}
