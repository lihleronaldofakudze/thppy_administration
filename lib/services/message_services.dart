import 'package:thppy_administration/models/Message.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MessageServices {
  // Get Messages
  Future<List<Message>> getMessages() async {
    var response = await http
        .get(Uri.parse('https://thppy.com/server/api/views/viewMessages.php'));
    var decodeMessages =
        json.decode(response.body).cast<Map<String, dynamic>>();
    List<Message> messages =
        decodeMessages.map<Message>((json) => Message.fromJson(json)).toList();
    return messages;
  }
}
