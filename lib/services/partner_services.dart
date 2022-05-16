import 'package:thppy_administration/models/Partner.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PartnerServices {
  // Get Partners
  Future<List<Partner>> getPartners() async {
    var response = await http
        .get(Uri.parse('https://thppy.com/server/api/views/viewPartners.php'));
    var decodePartners =
        json.decode(response.body).cast<Map<String, dynamic>>();
    List<Partner> partners =
        decodePartners.map<Partner>((json) => Partner.fromJson(json)).toList();
    return partners;
  }
}
