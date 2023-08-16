import 'package:events_time_app_client/main.dart';

import 'flavors.dart';

void main() {
  F.appFlavor = Flavor.dev;
  buildFromFlavor();
}
