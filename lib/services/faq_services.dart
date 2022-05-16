import 'package:thppy_administration/models/FAQ.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FAQServices {
  // GET FAQ
  Future<List<FAQ>> getFAQ() async {
    var response = await http
        .get(Uri.parse('https://thppy.com/server/api/views/viewFAQ.php'));
    var decodeFAQ = json.decode(response.body).cast<Map<String, dynamic>>();
    List<FAQ> faqs = decodeFAQ.map<FAQ>((json) => FAQ.fromJson(json)).toList();
    return faqs;
  }
}
