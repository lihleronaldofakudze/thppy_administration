import 'package:thppy_administration/models/Media.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MediaServices {
  // Get Media
  Future<List<Media>> getMedia() async {
    var response = await http
        .get(Uri.parse('https://thppy.com/server/api/views/viewMedia.php'));
    var decodeMedia = json.decode(response.body).cast<Map<String, dynamic>>();
    List<Media> media =
        decodeMedia.map<Media>((json) => Media.fromJson(json)).toList();
    return media;
  }
}
