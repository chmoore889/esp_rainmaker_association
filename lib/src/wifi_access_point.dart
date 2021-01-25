class WiFiAccessPoint {
  String wifiName;
  int rssi;
  int security;

  @override
  String toString() {
      return 'WiFiAccessPoint(wifiName: $wifiName, rssi: $rssi, security: $security)';
    }
}