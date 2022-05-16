import 'package:thppy_administration/models/Center.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CenterServices {
  // Get Centers
  Future<List<Center>> getCenters() async {
    var response = await http
        .get(Uri.parse('https://thppy.com/server/api/views/viewCenters.php'));
    var decodeCenters = json.decode(response.body).cast<Map<String, dynamic>>();
    List<Center> centers =
        decodeCenters.map<Center>((json) => Center.fromJson(json)).toList();
    return centers;
  }
}
