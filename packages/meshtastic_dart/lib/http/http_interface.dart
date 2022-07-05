import 'package:meshtastic_dart/device.dart';
import 'package:protobuf/protobuf.dart';
import 'package:http/http.dart' as http;
import 'package:meshtastic_dart/utils/types.dart' as types;
import 'package:meshtastic_dart/utils/constants.dart' as constants;

class HTTP_interface extends Device {
  /* Future<http.Response> httpConnection(String ipAddress, bool tls) {

    status = types.Status.connecting;
    String deviceAddress = ipAddress;

    if (ipAddress == "") {
      deviceAddress = tls ? constants.baseUrlHTTPS : constants.baseUrlHTTP;
    }

    if (status == types.Status.connecting) {}
  }*/
}
