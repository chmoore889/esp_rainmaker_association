import 'dart:typed_data';

import 'package:http/http.dart';
import 'package:esp_rainmaker_association/src/constants.dart';

class SoftAPTransport {
  final String baseUrl = ESPConstants.DEFAULT_WIFI_BASE_URL;
  Client client;

  Future<Uint8List> sendConfigData(String path, Uint8List data) async {
    client ??= Client();

    Uint8List responseBytes;
    try {
      final url = 'http://$baseUrl/$path';
      final resp = await client.post(
        url,
        headers: {
          'Accept': 'text/plain',
          'Content-type': 'application/x-www-form-urlencoded',
        },
        body: data,
      );

      if (resp.statusCode == 200) {
        responseBytes = resp.bodyBytes;
      }
    } catch (e) {
      print('HTTP: $e');
      rethrow;
    }

    return responseBytes;
  }
}
