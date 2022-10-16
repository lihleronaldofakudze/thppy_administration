import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:thppy_administration/services/countries_services.dart';
import 'package:thppy_administration/widgets/drawer_widget.dart';
import 'package:thppy_administration/widgets/text_box_widget.dart';

class RegionsScreen extends StatefulWidget {
  const RegionsScreen({Key? key}) : super(key: key);

  @override
  State<RegionsScreen> createState() => _RegionsScreenState();
}

class _RegionsScreenState extends State<RegionsScreen> {
  final TextEditingController _countryController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Add New Region'),
        icon: const Icon(
          Icons.add_rounded,
        ),
      ),
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text('Region Data Management'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
              color: Colors.red,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.description_rounded,
              color: Colors.green,
            ),
            tooltip: 'Generate Excel',
          ),
        ],
      ),
    );
  }

  void _onClick({required String id, required String name}) {
    AwesomeDialog(
      width: MediaQuery.of(context).size.width / 2,
      context: context,
      dialogType: DialogType.info,
      title: 'Take An Action',
      desc: 'You just clicked $name. Make a change or click away to cancel',
      btnCancelText: 'Delete',
      btnCancelOnPress: () => _delete(id: id, name: name),
      btnOkText: 'Update',
      btnOkOnPress: () => _update(id: id, name: name),
    ).show();
  }

  void _add() {
    AwesomeDialog(
      width: MediaQuery.of(context).size.width / 2,
      context: context,
      dialogType: DialogType.info,
      body: TextBoxWidget(
        controller: _countryController,
        label: 'Enter country name',
        isPassword: false,
        type: TextInputType.text,
      ),
      btnCancelOnPress: () {},
      btnOkText: 'Save',
      btnOkOnPress: () async {
        if (_countryController.text.isNotEmpty) {
          await CountrieService().addCountry(
            country: _countryController.text,
          );
        } else {
          Fluttertoast.showToast(
            msg: "Please enter country name first",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        }
      },
    ).show();
  }

  void _update({
    required String id,
    required String name,
  }) {}

  void _delete({
    required String id,
    required String name,
  }) {
    AwesomeDialog(
      width: MediaQuery.of(context).size.width / 2,
      context: context,
      dialogType: DialogType.info,
      title: 'Take An Action',
      desc: 'Are your sure, you want to delete $name permanately',
      btnCancelText: 'No',
      btnCancelOnPress: () {},
      btnOkText: 'Yes',
      btnOkOnPress: () async {
        await CountrieService(countryId: id).deleteCountry().then(
              (value) => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Successfully deleted'),
                ),
              ),
            );
      },
    ).show();
  }

  void _generateExcel() {}
}
