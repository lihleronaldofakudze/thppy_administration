import 'package:thppy_administration/models/Bootcamp.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BootcampServices {
  // Get Bootcamps
  Future<List<Bootcamp>> getBootcamps() async {
    var response = await http
        .get(Uri.parse('https://thppy.com/server/api/views/viewBootcamps.php'));
    var decodeBootcamps =
        json.decode(response.body).cast<Map<String, dynamic>>();
    List<Bootcamp> bootcamps = decodeBootcamps
        .map<Bootcamp>((json) => Bootcamp.fromJson(json))
        .toList();
    return bootcamps;
  }
}
