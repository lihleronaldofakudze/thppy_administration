import 'package:thppy_administration/models/Region.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RegionServices {
  // Get Regions
  Future<List<Region>> getRegions() async {
    var response = await http.get(Uri.parse(
        'https://thppy.com/server/api/views/viewRegions.php?status=Active'));
    var decodeRegions = json.decode(response.body).cast<Map<String, dynamic>>();
    List<Region> regions =
        decodeRegions.map<Region>((json) => Region.fromJson(json)).toList();
    return regions;
  }
}
