import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:thppy_administration/screens/blogs/blog.dart';

class BlogDB {
  final String? id;

  BlogDB({this.id});

  final CollectionReference _blogCollection =
      FirebaseFirestore.instance.collection('blogs');

  Future<void> createBlog({
    required String title,
    required String description,
    required String pic,
  }) async {
    await _blogCollection.doc().set({
      'title': title,
      'description': description,
      'pic': pic,
      'status': 'active',
      'likes': [],
      'lastUpdate': Timestamp.now(),
    });
  }

  Blog _blogFromSnapshot(DocumentSnapshot snapshot) {
    return Blog(
      id: snapshot.id,
      title: snapshot.get('title'),
      description: snapshot.get('description'),
      pic: snapshot.get('pic'),
      status: snapshot.get('status'),
      likes: snapshot.get('likes'),
      lastUpdate: snapshot.get('lastUpdate').toDate(),
    );
  }

  List<Blog> _blogsFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map(_blogFromSnapshot).toList();
  }

  Stream<Blog> get blog {
    return _blogCollection.doc(id).snapshots().map(_blogFromSnapshot);
  }

  Stream<List<Blog>> get blogs {
    return _blogCollection.snapshots().map(_blogsFromSnapshot);
  }
}
