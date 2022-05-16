import 'package:thppy_administration/models/Team.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TeamServices {
  // Get Team List
  Future<List<Team>> getTeams() async {
    var response = await http
        .get(Uri.parse('https://thppy.com/server/api/views/viewTeams.php'));
    var decodeTeams = json.decode(response.body).cast<Map<String, dynamic>>();
    List<Team> teams =
        decodeTeams.map<Team>((json) => Team.fromJson(json)).toList();
    return teams;
  }
}
