import 'package:thppy_administration/models/Youth.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class YouthServices {
  // Get Youth List
  Future<List<Youth>> getYouths() async {
    var response = await http.get(
      Uri.parse(
        'https://thppy.com/server/api/views/viewYouth.php',
      ),
    );
    var decodeYouths = json.decode(response.body).cast<Map<String, dynamic>>();
    List<Youth> youths =
        decodeYouths.map<Youth>((json) => Youth.fromJson(json)).toList();
    return youths;
  }
}
