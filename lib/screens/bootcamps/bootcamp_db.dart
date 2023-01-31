import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:thppy_administration/screens/bootcamps/bootcamp.dart';

class BootcampDB {
  final String? id;

  BootcampDB({
    this.id,
  });

  final CollectionReference bootcampsCollection =
      FirebaseFirestore.instance.collection('bootcamps');

  Future addBootcamp({
    required String bootcampName,
    required String targetAudience,
  }) async {
    return bootcampsCollection.add({
      'bootcampName': bootcampName,
      'targetAudience': targetAudience,
      'status': 'active',
      'lastUpdate': Timestamp.now(),
    });
  }

  Future updateBootcamp({
    required String bootcampName,
    required String targetAudience,
    required String status,
    required DateTime lastUpdate,
  }) async {
    return bootcampsCollection.doc(id).update({
      'bootcampName': bootcampName,
      'targetAudience': targetAudience,
      'status': status,
      'lastUpdate': lastUpdate,
    });
  }

  Future deleteBootcamp() async {
    return bootcampsCollection.doc(id).delete();
  }

  Future deactivateBootcamp() async {
    return bootcampsCollection.doc(id).update({
      'status': 'inactive',
      'lastUpdate': Timestamp.now(),
    });
  }

  Future activateBootcamp() async {
    return bootcampsCollection.doc(id).update({
      'status': 'active',
      'lastUpdate': Timestamp.now(),
    });
  }

  Bootcamp _bootcampFromSnapshot(DocumentSnapshot snapshot) {
    return Bootcamp(
      id: snapshot.id,
      bootcampName: snapshot.get('bootcampName'),
      targetAudience: snapshot.get('targetAudience'),
      status: snapshot.get('status'),
      lastUpdate: snapshot.get('lastUpdate'),
    );
  }

  Stream<Bootcamp> get bootcamp {
    return bootcampsCollection.doc(id).snapshots().map(_bootcampFromSnapshot);
  }

  List<Bootcamp> _bootcampsFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Bootcamp(
        id: doc.id,
        bootcampName: doc.get('bootcampName'),
        targetAudience: doc.get('targetAudience'),
        status: doc.get('status'),
        lastUpdate: doc.get('lastUpdate'),
      );
    }).toList();
  }

  Stream<List<Bootcamp>> get bootcamps {
    return bootcampsCollection.snapshots().map(_bootcampsFromSnapshot);
  }
}
