import 'package:thppy_administration/models/CityCenter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CenterServices {
  // Get Centers
  Future<List<CityCenter>> getCenters() async {
    var response = await http.get(Uri.parse(
        'https://thppy.com/server/api/views/viewCenters.php?status=Active'));
    var decodeCenters = json.decode(response.body).cast<Map<String, dynamic>>();
    List<CityCenter> centers = decodeCenters
        .map<CityCenter>((json) => CityCenter.fromJson(json))
        .toList();
    return centers;
  }
}
