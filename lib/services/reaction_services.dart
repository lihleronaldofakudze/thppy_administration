import 'package:thppy_administration/models/Reaction.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ReactionServices {
  // Get Reaction List
  Future<List<Reaction>> getReactions() async {
    var response = await http
        .get(Uri.parse('https://thppy.com/server/api/views/viewReactions.php'));
    var decodeReactions =
        json.decode(response.body).cast<Map<String, dynamic>>();
    List<Reaction> reactions = decodeReactions
        .map<Reaction>((json) => Reaction.fromJson(json))
        .toList();
    return reactions;
  }
}
