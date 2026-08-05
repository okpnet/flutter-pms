// import 'dart:convert';

import '../../../contents/_models/models.dart';

class MockMaintenanceApi {
  // final http.Client client;

  // MockMaintenanceApi(this.client);

  Future<MaintenanceStatus> fetchStatus() async {
    // final res = await client.get(
    //   Uri.parse('https://cdn.example.com/app-status.json'),
    // );
    // final json = jsonDecode(res.body);
    // return MaintenanceStatus.fromJson(json);
    return MaintenanceStatus(isMaintenance: false, message: '');
  }
}
