import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:thppy_administration/screens/blogs/blog_db.dart';
import 'package:thppy_administration/services/storage_services.dart';
import 'package:thppy_administration/widgets/text_box_widget.dart';

class AddBlogDialog extends StatefulWidget {
  const AddBlogDialog({Key? key}) : super(key: key);

  @override
  State<AddBlogDialog> createState() => _AddBlogDialogState();
}

class _AddBlogDialogState extends State<AddBlogDialog> {
  final blogTitleController = TextEditingController();
  final blogDescriptionController = TextEditingController();
  PickedFile _imageFile = PickedFile('');
  bool _isLoading = false;

  void _pickImage() async {
    await ImagePicker()
        .pickImage(source: ImageSource.gallery)
        .then((pickedFile) {
      setState(() {
        _imageFile = PickedFile(pickedFile!.path);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add Blog'),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: _imageFile.path.isEmpty
                      ? const NetworkImage('assets/images/logo.png')
                      : NetworkImage(_imageFile.path),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            TextButton(
              onPressed: _pickImage,
              child: const Text('Pick Image'),
            ),
            TextBoxWidget(
              label: 'Blog title',
              controller: blogTitleController,
              type: TextInputType.text,
            ),
            TextBoxWidget(
              label: 'Blog description',
              controller: blogDescriptionController,
              type: TextInputType.text,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: _isLoading
              ? const LinearProgressIndicator()
              : const Text('Cancel'),
        ),
        TextButton(
          onPressed: () async {
            setState(() {
              _isLoading = true;
            });

            if (blogTitleController.text.isNotEmpty &&
                blogDescriptionController.text.isNotEmpty &&
                _imageFile.path.isNotEmpty) {
              await StorageService()
                  .uploadFile(image: _imageFile, folder: 'blogs')
                  .then((url) async {
                await BlogDB()
                    .createBlog(
                        title: blogTitleController.text,
                        description: blogDescriptionController.text,
                        pic: url)
                    .then((value) {
                  setState(() {
                    _isLoading = false;
                  });
                  Navigator.pop(context);
                });
              });
            } else {
              setState(() {
                _isLoading = false;
              });
              AwesomeDialog(
                context: context,
                dialogType: DialogType.error,
                animType: AnimType.bottomSlide,
                title: 'Error',
                desc: 'Please fill all the fields',
                btnOkOnPress: () {},
              ).show();
            }
          },
          child:
              _isLoading ? const LinearProgressIndicator() : const Text('Add'),
        ),
      ],
    );
  }
}
