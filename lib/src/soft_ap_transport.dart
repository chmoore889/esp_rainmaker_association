import 'dart:typed_data';

import 'package:http/http.dart';
import 'package:esp_rainmaker_association/src/constants.dart';

class SoftAPTransport {
  static const String baseUrl = ESPConstants.DEFAULT_WIFI_BASE_URL;
  final Client _client;

  SoftAPTransport() : _client = Client();

  Future<Uint8List> sendConfigData(String path, Uint8List data) async {
    Uint8List responseBytes;
    try {
      final resp = await _client.post(
        Uri.http(baseUrl, '/$path'),
        headers: {
          'Accept': 'text/plain',
          'Content-type': 'application/x-www-form-urlencoded',
        },
        body: data,
      );

      if (resp.statusCode == 200) {
        responseBytes = resp.bodyBytes;
      } else {
        throw 'Network Error';
      }
    } catch (e) {
      print('HTTP: $e');
      rethrow;
    }

    return responseBytes;
  }
}
