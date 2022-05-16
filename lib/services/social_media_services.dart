import 'package:thppy_administration/models/SocialMedia.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SocialMediaServices {
  // Get Social Media List
  Future<List<SocialMedia>> getSocialMedia() async {
    var response = await http.get(
        Uri.parse('https://thppy.com/server/api/views/viewSocialMedia.php'));
    var decodeSocialMedia =
        json.decode(response.body).cast<Map<String, dynamic>>();
    List<SocialMedia> socialMedia = decodeSocialMedia
        .map<SocialMedia>((json) => SocialMedia.fromJson(json))
        .toList();
    return socialMedia;
  }
}
