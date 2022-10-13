import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:thppy_administration/models/Country.dart';

class CountrieService {
  final String? countryId;

  CountrieService({this.countryId});

  final CollectionReference _countriesCollection =
      FirebaseFirestore.instance.collection("countries");

  Future addCountry({required String country}) {
    return _countriesCollection.add({
      'country': country,
    });
  }

  Future updateCountry({required String country}) {
    return _countriesCollection.doc(countryId).set({
      'country': country,
    });
  }

  Future deleteCountry() {
    return _countriesCollection.doc(countryId).delete();
  }

  Country _countryFromSnapshot(DocumentSnapshot snapshot) {
    return Country(
      id: snapshot.id,
      country: snapshot.get('country'),
    );
  }

  Stream<Country> get country {
    return _countriesCollection
        .doc(countryId)
        .snapshots()
        .map(_countryFromSnapshot);
  }

  List<Country> _countriesFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map(_countryFromSnapshot).toList();
  }

  Stream<List<Country>> get countries {
    return _countriesCollection.snapshots().map(_countriesFromSnapshot);
  }
}
