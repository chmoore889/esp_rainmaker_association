/// Represents an access point detected by the rainmaker device.
class WiFiAccessPoint {
  /// SSID of the access point.
  final String wifiName;

  /// RSSI of the access point.
  int rssi;

  /// Security type of the access point.
  final int security;

  WiFiAccessPoint({
    required this.wifiName,
    required this.rssi,
    required this.security,
  });

  @override
  String toString() {
    return 'WiFiAccessPoint(wifiName: $wifiName, rssi: $rssi, security: $security)';
  }
}
