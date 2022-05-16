import 'package:thppy_administration/models/Comment.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CommentServices {
  // Get Comments
  Future<List<Comment>> getComments() async {
    var response = await http
        .get(Uri.parse('https://thppy.com/server/api/views/viewComments.php'));
    var decodeComments =
        json.decode(response.body).cast<Map<String, dynamic>>();
    List<Comment> comments =
        decodeComments.map<Comment>((json) => Comment.fromJson(json)).toList();
    return comments;
  }
}
