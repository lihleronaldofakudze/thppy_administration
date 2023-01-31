import 'package:cloud_firestore/cloud_firestore.dart';

class Bootcamp {
  final String id;
  final String bootcampName;
  final String targetAudience;
  final String status;
  final Timestamp lastUpdate;

  Bootcamp({
    required this.id,
    required this.bootcampName,
    required this.targetAudience,
    required this.status,
    required this.lastUpdate,
  });
}
