import 'package:thppy_administration/models/Country.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CountyService {
  Future<List<Country>> getAllCountries() async {
    var response = await http.get(Uri.parse('https://thppy.com/server/api/views/viewCountry.php'));
    var decodeCountries = json.decode(response.body).cast<Map<String, dynamic>>();
    List<Country> countries = decodeCountries.map<Country>((json) => Country.fromJson(json)).toList();



















































    
    
}
