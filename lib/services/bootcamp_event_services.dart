import 'package:thppy_administration/models/BootcampEvent.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BootcampEventServices {
  // Get Bootcamp Events
  Future<List<BootcampEvent>> getBootcampEvents() async {
    var response = await http.get(
        Uri.parse('https://thppy.com/server/api/views/viewBootcampEvents.php'));
    var decodeBootcampEvents =
        json.decode(response.body).cast<Map<String, dynamic>>();
    List<BootcampEvent> bootcampEvents = decodeBootcampEvents
        .map<BootcampEvent>((json) => BootcampEvent.fromJson(json))
        .toList();
    return bootcampEvents;
  }
}
