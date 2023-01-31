import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

class StorageService {
  Future<List<String>> uploadFiles({
    required List<PickedFile> images,
    required String folder,
  }) async {
    var imageUrls = await Future.wait(
      images.map(
        (image) => uploadFile(
          image: image,
          folder: folder,
        ),
      ),
    );
    return imageUrls;
  }

  Future<String> uploadFile({
    required PickedFile image,
    required String folder,
  }) async {
    Reference storageReference =
        FirebaseStorage.instance.ref().child('$folder/${basename(image.path)}');
    UploadTask uploadTask = storageReference.putData(
      await image.readAsBytes(),
      SettableMetadata(contentType: 'image/jpeg'),
    );
    await uploadTask.whenComplete(() => null);

    return await storageReference.getDownloadURL();
  }
}
