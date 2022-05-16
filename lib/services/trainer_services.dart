import 'package:thppy_administration/models/Trainer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TrainerServices {
  // Get Trainer List
  Future<List<Trainer>> getTrainers() async {
    var response = await http
        .get(Uri.parse('https://thppy.com/server/api/views/viewTrainers.php'));
    var decodeTrainers =
        json.decode(response.body).cast<Map<String, dynamic>>();
    List<Trainer> trainers =
        decodeTrainers.map<Trainer>((json) => Trainer.fromJson(json)).toList();
    return trainers;
  }
}
