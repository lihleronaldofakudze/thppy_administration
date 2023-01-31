import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:thppy_administration/screens/bootcamps/bootcamp_db.dart';
import 'package:thppy_administration/widgets/drop_box_widget.dart';
import 'package:thppy_administration/widgets/text_box_widget.dart';

class AddBootcampDialog extends StatefulWidget {
  const AddBootcampDialog({Key? key}) : super(key: key);

  @override
  State<AddBootcampDialog> createState() => _AddBootcampDialogState();
}

class _AddBootcampDialogState extends State<AddBootcampDialog> {
  final _nameController = TextEditingController();
  final _audienceController = TextEditingController();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add Bootcamp'),
      content: SingleChildScrollView(
        child: Column(
          children: [
            TextBoxWidget(
              label: 'Bootcamp Name',
              controller: _nameController,
              type: TextInputType.text,
            ),
            DropBoxWidget(
              label: 'Target Audience',
              items: const [
                'Youth',
                'Trainers',
              ],
              controller: _audienceController,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: _isLoading
              ? const CircularProgressIndicator(color: Colors.white)
              : const Text('Cancel'),
        ),
        TextButton(
          onPressed: () async {
            setState(() {
              _isLoading = true;
            });
            if (_nameController.text.isNotEmpty &&
                _audienceController.text.isNotEmpty) {
              await BootcampDB()
                  .addBootcamp(
                bootcampName: _nameController.text,
                targetAudience: _audienceController.text,
              )
                  .then((value) {
                setState(() {
                  _isLoading = false;
                });
                Navigator.of(context).pop();
              });
            } else {
              setState(() {
                _isLoading = false;
              });
              AwesomeDialog(
                context: context,
                dialogType: DialogType.ERROR,
                animType: AnimType.BOTTOMSLIDE,
                title: 'Error',
                desc: 'Please fill in all the fields',
                btnOkOnPress: () {},
              ).show();
            }
          },
          child: _isLoading
              ? const CircularProgressIndicator(color: Colors.white)
              : const Text('Add'),
        ),
      ],
    );
  }
}
