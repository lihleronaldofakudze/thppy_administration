import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thppy_administration/screens/youth/youth.dart';
import 'package:thppy_administration/services/db/youth_services.dart';
import 'package:thppy_administration/widgets/actions_widget.dart';
import 'package:thppy_administration/widgets/header_widget.dart';

class YouthScreen extends StatefulWidget {
  const YouthScreen({Key? key}) : super(key: key);

  @override
  State<YouthScreen> createState() => _YouthScreenState();
}

class _YouthScreenState extends State<YouthScreen> {
  @override
  Widget build(BuildContext context) {
    final people = Provider.of<List<Youth>>(context);
    return HeaderWidget(
      title: 'Youth',
      onAddPressed: () {},
      onGeneratePressed: () {},
      isAddable: false,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            showCheckboxColumn: false,
            showBottomBorder: true,
            headingRowColor: MaterialStateColor.resolveWith(
              (states) => Colors.black,
            ),
            headingTextStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            columns: const [
              DataColumn(label: Text('Image')),
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Surname')),
              DataColumn(label: Text('Phone Number')),
              DataColumn(label: Text('Gender')),
              DataColumn(label: Text('Age')),
              DataColumn(label: Text('Country')),
              DataColumn(label: Text('Actions')),
            ],
            rows: people
                .map(
                  (person) => DataRow(
                    onSelectChanged: (value) {},
                    cells: [
                      DataCell(
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            person.image,
                          ),
                          backgroundColor: Colors.white,
                        ),
                      ),
                      DataCell(Text(person.name)),
                      DataCell(Text(person.surname)),
                      DataCell(Text(person.phoneNumber)),
                      DataCell(Text(person.gender)),
                      DataCell(Text(person.age)),
                      DataCell(Text(person.country)),
                      DataCell(ActionsWidget(
                        onDeletePressed: () => _delete(
                          id: person.uid,
                          name: person.name,
                          surname: person.surname,
                        ),
                        isEditable: false,
                        showInfo: true,
                      )),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }

  void _delete({
    required String id,
    required String name,
    required String surname,
  }) {
    AwesomeDialog(
      width: MediaQuery.of(context).size.width / 2,
      context: context,
      dialogType: DialogType.info,
      title: 'Take An Action',
      desc: 'Are your sure, you want to delete $name $surname permanately',
      btnCancelText: 'No',
      btnCancelOnPress: () {},
      btnOkText: 'Yes',
      btnOkOnPress: () async {
        await YouthServices().deleteYouth(id: id).then(
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
