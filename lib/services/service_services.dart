import 'package:thppy_administration/models/Service.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ServiceServices {
  // Get Service List
  Future<List<Service>> getServices() async {
    var response = await http
        .get(Uri.parse('https://thppy.com/server/api/views/viewServices.php'));
    var decodeServices =
        json.decode(response.body).cast<Map<String, dynamic>>();
    List<Service> services =
        decodeServices.map<Service>((json) => Service.fromJson(json)).toList();
    return services;
  }
}
