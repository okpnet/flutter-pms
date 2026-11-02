import 'dart:io';

/// PocketBase の接続先。
///
/// `http://host:8090/api` のように末尾に `/api` を付けて渡されても取り除く
/// (SDK が `/api` を付け足すため)。平文の `http` は、ループバック・ローカルのネットワーク
/// (`192.168.x.x` など)だけに限る。それ以外は `https` を必須とし、`http` は [ArgumentError]。
class PbEndpoint {
  PbEndpoint._(this.baseUrl);

  final String baseUrl;

  factory PbEndpoint.parse(String url) {
    final uri = Uri.tryParse(url.trim());
    if (uri == null ||
        uri.host.isEmpty ||
        (uri.scheme != 'http' && uri.scheme != 'https')) {
      throw ArgumentError.value(url, 'url', 'must be http(s)://host[:port]');
    }
    if (uri.scheme == 'http' && !_isLocalHost(uri.host)) {
      throw ArgumentError.value(
        url,
        'url',
        'plain http is allowed only for local networks (password and token would be sent unencrypted); use https',
      );
    }
    var path = uri.path;
    while (path.endsWith('/')) {
      path = path.substring(0, path.length - 1);
    }
    if (path.endsWith('/api')) path = path.substring(0, path.length - 4);
    final port = uri.hasPort ? ':${uri.port}' : '';
    return PbEndpoint._('${uri.scheme}://${uri.host}$port$path');
  }

  static bool _isLocalHost(String host) {
    final h = host.toLowerCase();
    if (h == 'localhost' || h.endsWith('.local')) return true;
    final address = InternetAddress.tryParse(h);
    if (address == null) return false;
    if (address.isLoopback) return true;
    if (address.type == InternetAddressType.IPv4) {
      final b = address.rawAddress;
      return b[0] == 10 ||
          (b[0] == 172 && b[1] >= 16 && b[1] <= 31) ||
          (b[0] == 192 && b[1] == 168);
    }
    return address.isLinkLocal;
  }

  Map<String, Object?> toJson() => {'baseUrl': baseUrl};

  @override
  String toString() => 'PbEndpoint($baseUrl)';
}
