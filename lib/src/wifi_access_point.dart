/// Represents an access point detected by the rainmaker device.
class WiFiAccessPoint {
  /// SSID of the access point.
  String wifiName;

  /// RSSI of the access point.
  int rssi;

  /// Security type of the access point.
  int security;

  @override
  String toString() {
    return 'WiFiAccessPoint(wifiName: $wifiName, rssi: $rssi, security: $security)';
  }
}
