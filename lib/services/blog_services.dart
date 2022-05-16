import 'package:thppy_administration/models/Blog.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BlogServices {
  // Get Blogs
  Future<List<Blog>> getBlogs() async {
    var response = await http
        .get(Uri.parse('https://thppy.com/server/api/views/viewBlogs.php'));
    var decodeBlogs = json.decode(response.body).cast<Map<String, dynamic>>();
    List<Blog> blogs =
        decodeBlogs.map<Blog>((json) => Blog.fromJson(json)).toList();
    return blogs;
  }
}
