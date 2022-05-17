import 'package:thppy_administration/models/User.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UserServices {
  // Get User List
  Future<List<User>> getUsers() async {
    var response = await http.get(Uri.parse(
        'https://thppy.com/server/api/views/viewUsers.php?status=Active'));
    var decodeUsers = json.decode(response.body).cast<Map<String, dynamic>>();
    List<User> users =
        decodeUsers.map<User>((json) => User.fromJson(json)).toList();
    return users;
  }
}
