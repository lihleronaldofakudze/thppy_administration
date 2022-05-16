import 'package:thppy_administration/models/Ambassador.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AmbassadorServices {
  // Get Ambassadors
  Future<List<Ambassador>> getAmbassadors() async {
    var response = await http.get(
        Uri.parse('https://thppy.com/server/api/views/viewAmbassadors.php'));
    var decodeAmbassadors =
        json.decode(response.body).cast<Map<String, dynamic>>();
    List<Ambassador> ambassadors = decodeAmbassadors
        .map<Ambassador>((json) => Ambassador.fromJson(json))
        .toList();
    return ambassadors;
  }
}
