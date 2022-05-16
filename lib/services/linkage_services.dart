import 'package:thppy_administration/models/Linkage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LinkageService {
  // Get linkages
  Future<List<Linkage>> getLinkages() async {
    var response = await http
        .get(Uri.parse('https://thppy.com/server/api/views/viewLinkages.php'));
    var decodeLinkages =
        json.decode(response.body).cast<Map<String, dynamic>>();
    List<Linkage> linkages =
        decodeLinkages.map<Linkage>((json) => Linkage.fromJson(json)).toList();
    return linkages;
  }
}
