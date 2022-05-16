import 'package:thppy_administration/models/Country.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CountryService {
  // Get Countries
  Future<List<Country>> getAllCountries() async {
    var response = await http.get(Uri.parse(
        'https://thppy.com/server/api/views/viewCountry.php?status=Active'));
    var decodeCountries =
        json.decode(response.body).cast<Map<String, dynamic>>();
    List<Country> countries =
        decodeCountries.map<Country>((json) => Country.fromJson(json)).toList();
    return countries;
  }

  // Add A Country
  Future<Country> addCountry(Country country) async {
    var response = await http.post(
        Uri.parse('https://thppy.com/server/api/views/viewCountry.php'),
        body: {
          'country_name': country.countryName,
        });
    var decodeCountry = json.decode(response.body);
    Country newCountry = Country.fromJson(decodeCountry);
    return newCountry;
  }

  // Update A Country
  Future<Country> updateCountry(Country country) async {
    var response = await http.post(
        Uri.parse('https://thppy.com/server/api/views/viewCountry.php'),
        body: {
          'id': country.id.toString(),
          'country_name': country.countryName,
        });
    var decodeCountry = json.decode(response.body);
    Country updatedCountry = Country.fromJson(decodeCountry);
    return updatedCountry;
  }

  // Delete A Country
  Future<Country> deleteCountry(Country country) async {
    var response = await http.post(
        Uri.parse('https://thppy.com/server/api/views/viewCountry.php'),
        body: {
          'id': country.id.toString(),
          'status': '0',
        });
    var decodeCountry = json.decode(response.body);
    Country deletedCountry = Country.fromJson(decodeCountry);
    return deletedCountry;
  }
}
