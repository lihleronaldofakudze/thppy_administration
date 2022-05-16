import 'package:thppy_administration/models/Interaction.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class InteractionService {
  // Get Interactions
  Future<List<Interaction>> getInteractions() async {
    var response = await http.get(
        Uri.parse('https://thppy.com/server/api/views/viewInteractions.php'));
    var decodeInteractions =
        json.decode(response.body).cast<Map<String, dynamic>>();
    List<Interaction> interactions = decodeInteractions
        .map<Interaction>((json) => Interaction.fromJson(json))
        .toList();
    return interactions;
  }
}
