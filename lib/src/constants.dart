class ESPConstants {
  static const String DEFAULT_WIFI_BASE_URL = '192.168.4.1:80';

  // End point names
  static const String HANDLER_PROV_SCAN = 'prov-scan';
  static const String HANDLER_PROTO_VER = 'proto-ver';
  static const String HANDLER_PROV_SESSION = 'prov-session';
  static const String HANDLER_PROV_CONFIG = 'prov-config';

  // Event types
  static const int EVENT_DEVICE_CONNECTED = 1;
  static const int EVENT_DEVICE_CONNECTION_FAILED = 2;
  static const int EVENT_DEVICE_DISCONNECTED = 3;

  // Constants for WiFi Security values (As per proto files)
  static const int WIFI_OPEN = 0;
  static const int WIFI_WEP = 1;
  static const int WIFI_WPA_PSK = 2;
  static const int WIFI_WPA2_PSK = 3;
  static const int WIFI_WPA_WPA2_PSK = 4;
  static const int WIFI_WPA2_ENTERPRISE = 5;
}

enum TransportType { TRANSPORT_BLE, TRANSPORT_SOFTAP }

enum SecurityType { SECURITY_0, SECURITY_1 }

enum ProvisionFailureReason {
  AUTH_FAILED,
  NETWORK_NOT_FOUND,
  DEVICE_DISCONNECTED,
  UNKNOWN
}
