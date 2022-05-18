import 'package:thppy_administration/models/About.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AboutServices {
  // Get About
  static Future<List<About>> getAbout() async {
    var response = await http.get(Uri.parse(
        'https://thppy.com/server/api/views/viewAbout.php?status=Active'));
    var decodeAmbassadors =
        json.decode(response.body).cast<Map<String, dynamic>>();
    List<About> ambassadors =
        decodeAmbassadors.map<About>((json) => About.fromJson(json)).toList();
    return ambassadors;
  }
}
