import 'package:thppy_administration/models/SocialMediaAnalysis.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SocialMediaAnalysisService {
  // Get Social Media Analysis
  Future<List<SocialMediaAnalysis>> getSocialMediaAnalysis() async {
    var response = await http.get(Uri.parse(
        'https://thppy.com/server/api/views/viewSocialMediaAnalysis.php'));
    var decodeSocialMediaAnalysis =
        json.decode(response.body).cast<Map<String, dynamic>>();
    List<SocialMediaAnalysis> socialMediaAnalysis = decodeSocialMediaAnalysis
        .map<SocialMediaAnalysis>((json) => SocialMediaAnalysis.fromJson(json))
        .toList();
    return socialMediaAnalysis;
  }
}
