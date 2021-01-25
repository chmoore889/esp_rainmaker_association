## Introduction
A native dart implementation of ESP Rainmaker provisioning and user mapping.

Currently only security 0 is supported and there are no plans to implement security 1, though pull requests would be welcome.

## Usage

A simple usage example:

```dart
import 'package:esp_rainmaker_association/rainmaker_association.dart';
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
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/chmoore889/esp_rainmaker_association/issues
