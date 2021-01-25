import 'package:esp_rainmaker_association/esp_rainmaker_association.dart';
import 'package:uuid/uuid.dart';

Future<void> main() async {
  final device = EspDevice();
  final mapping = UserMapping(device);

  final networks = await device.scanNetworks();
  print(networks);

  final uidGen = Uuid();
  final secKey = uidGen.v1();

  await mapping.mapUser('user_id', secKey);
  await device.provision('ssid', 'pass');
}
