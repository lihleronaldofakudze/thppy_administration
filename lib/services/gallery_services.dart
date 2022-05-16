import 'package:thppy_administration/models/Gallery.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GalleryServices {
  // Get Galleries
  Future<List<Gallery>> getGalleries() async {
    var response = await http
        .get(Uri.parse('https://thppy.com/server/api/views/viewGalleries.php'));
    var decodeGalleries =
        json.decode(response.body).cast<Map<String, dynamic>>();
    List<Gallery> galleries =
        decodeGalleries.map<Gallery>((json) => Gallery.fromJson(json)).toList();
    return galleries;
  }
}
