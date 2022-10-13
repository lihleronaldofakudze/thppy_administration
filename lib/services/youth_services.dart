import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:thppy_administration/models/Youth.dart';

class YouthServices {
  final String? uid;

  YouthServices({
    this.uid,
  });

  final CollectionReference _youthCollection =
      FirebaseFirestore.instance.collection("youth");

  Future updateYouth({
    required String natid,
    required String name,
    required String surname,
    required String gender,
    required String countryName,
    required String regionName,
    required Timestamp lastUpdate,
    required String centerName,
    required String pic,
    required String status,
    required String role,
  }) {
    return _youthCollection.doc().set({
      'natid': natid,
      'name': name,
      'surname': surname,
      'gender': gender,
      'country': countryName,
      'region': regionName,
      'lastUpdate': lastUpdate,
      'center': centerName,
      'image': pic,
      'status': status,
      'role': role,
    });
  }

  Future deleteYouth({required String id}) {
    return _youthCollection.doc(id).delete();
  }

  Youth _youthFromSnapshot(DocumentSnapshot snapshot) {
    return Youth(
      uid: snapshot.id,
      age: snapshot.get("age"),
      center: snapshot.get("center"),
      city: snapshot.get("city"),
      country: snapshot.get("country"),
      emailAddress: snapshot.get("emailAddress"),
      gender: snapshot.get("gender"),
      image: snapshot.get("image"),
      name: snapshot.get("name"),
      nationalId: snapshot.get("nationalId"),
      phoneNumber: snapshot.get("phoneNumber"),
      role: snapshot.get("role"),
      surname: snapshot.get("surname"),
    );
  }

  List<Youth> _youngPeopleFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map(_youthFromSnapshot).toList();
  }

  Stream<Youth> get youth {
    return _youthCollection.doc(uid).snapshots().map(_youthFromSnapshot);
  }

  Stream<List<Youth>> get youngPeople {
    return _youthCollection.snapshots().map(_youngPeopleFromSnapshot);
  }
}
