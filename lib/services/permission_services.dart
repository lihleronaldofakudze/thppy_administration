import 'package:thppy_administration/models/Permission.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PermissionServices {
  // Get Permissions
  Future<List<Permission>> getPermissions() async {
    var response = await http.get(
        Uri.parse('https://thppy.com/server/api/views/viewPermissions.php'));
    var decodePermissions =
        json.decode(response.body).cast<Map<String, dynamic>>();
    List<Permission> permissions = decodePermissions
        .map<Permission>((json) => Permission.fromJson(json))
        .toList();
    return permissions;
  }
}
