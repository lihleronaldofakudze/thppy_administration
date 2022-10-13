import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:thppy_administration/models/CityCenter.dart';

class CenterService {
  final String? centerId;

  CenterService({
    this.centerId,
  });

  final CollectionReference _centersCollection =
      FirebaseFirestore.instance.collection("centers");

  Future addCenter({
    required String country,
    required String center,
    required String region,
  }) {
    return _centersCollection.add({
      'country': country,
      'center': center,
      'region': region,
    });
  }

  Future updateCenter({
    required String country,
    required String center,
    required String region,
  }) {
    return _centersCollection.doc(centerId).set({
      'country': country,
      'center': center,
      'region': region,
    });
  }

  Future deleteCenter() {
    return _centersCollection.doc(centerId).delete();
  }

  CityCenter _centerFromSnapshot(DocumentSnapshot snapshot) {
    return CityCenter(
      id: snapshot.id,
      country: snapshot.get('country'),
      center: snapshot.get('center'),
      region: snapshot.get('region'),
    );
  }

  Stream<CityCenter> get center {
    return _centersCollection
        .doc(centerId)
        .snapshots()
        .map(_centerFromSnapshot);
  }

  List<CityCenter> _centersFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map(_centerFromSnapshot).toList();
  }

  Stream<List<CityCenter>> get centers {
    return _centersCollection.snapshots().map(_centersFromSnapshot);
  }
}
