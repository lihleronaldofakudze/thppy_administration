import 'package:thppy_administration/models/Chat.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ChatServices {
  // Get Chats
  Future<List<Chat>> getChats() async {
    var response = await http
        .get(Uri.parse('https://thppy.com/server/api/views/viewChats.php'));
    var decodeChats = json.decode(response.body).cast<Map<String, dynamic>>();
    List<Chat> chats =
        decodeChats.map<Chat>((json) => Chat.fromJson(json)).toList();
    return chats;
  }
}
