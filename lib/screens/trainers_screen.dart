import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thppy_administration/models/Youth.dart';
import 'package:thppy_administration/services/youth_services.dart';
import 'package:thppy_administration/widgets/drawer_widget.dart';

class TrainersScreen extends StatefulWidget {
  const TrainersScreen({Key? key}) : super(key: key);

  @override
  State<TrainersScreen> createState() => _TrainersScreenState();
}

class _TrainersScreenState extends State<TrainersScreen> {
  @override
  Widget build(BuildContext context) {
    final people = Provider.of<List<Youth>>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Add New Country'),
        icon: const Icon(
          Icons.add_rounded,
        ),
      ),
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text('Trainers Data Management'),
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
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              showBottomBorder: true,
              // headingTextStyle: const TextStyle(
              //   fontWeight: FontWeight.bold,
              // ),
              columns: const [
                DataColumn(label: Text('Image')),
                DataColumn(label: Text('National ID')),
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Surname')),
                DataColumn(label: Text('Phone Number')),
                DataColumn(label: Text('Gender')),
                DataColumn(label: Text('Age')),
                DataColumn(label: Text('Email Address')),
                DataColumn(label: Text('Country')),
                DataColumn(label: Text('City')),
                DataColumn(label: Text('Center')),
              ],
              rows: people
                  .map(
                    (person) => DataRow(
                      cells: [
                        DataCell(
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              person.image,
                            ),
                            backgroundColor: Colors.white,
                          ),
                        ),
                        DataCell(
                          Text(person.nationalId),
                          onTap: () => _onClick(
                            id: person.uid,
                            name: person.name,
                            surname: person.surname,
                          ),
                        ),
                        DataCell(
                          Text(person.name),
                          onTap: () => _onClick(
                            id: person.uid,
                            name: person.name,
                            surname: person.surname,
                          ),
                        ),
                        DataCell(
                          Text(person.surname),
                          onTap: () => _onClick(
                            id: person.uid,
                            name: person.name,
                            surname: person.surname,
                          ),
                        ),
                        DataCell(
                          Text(person.phoneNumber),
                          onTap: () => _onClick(
                            id: person.uid,
                            name: person.name,
                            surname: person.surname,
                          ),
                        ),
                        DataCell(
                          Text(person.gender),
                          onTap: () => _onClick(
                            id: person.uid,
                            name: person.name,
                            surname: person.surname,
                          ),
                        ),
                        DataCell(
                          Text(person.age),
                          onTap: () => _onClick(
                            id: person.uid,
                            name: person.name,
                            surname: person.surname,
                          ),
                        ),
                        DataCell(
                          Text(person.emailAddress),
                          onTap: () => _onClick(
                            id: person.uid,
                            name: person.name,
                            surname: person.surname,
                          ),
                        ),
                        DataCell(
                          Text(person.country),
                          onTap: () => _onClick(
                            id: person.uid,
                            name: person.name,
                            surname: person.surname,
                          ),
                        ),
                        DataCell(
                          Text(person.city),
                          onTap: () => _onClick(
                            id: person.uid,
                            name: person.name,
                            surname: person.surname,
                          ),
                        ),
                        DataCell(
                          Text(person.center),
                          onTap: () => _onClick(
                            id: person.uid,
                            name: person.name,
                            surname: person.surname,
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }

  void _onClick(
      {required String id, required String name, required String surname}) {
    AwesomeDialog(
      width: MediaQuery.of(context).size.width / 2,
      context: context,
      dialogType: DialogType.info,
      title: 'Take An Action',
      desc:
          'You just clicked $name $surname. Make a change or click away to cancel',
      btnCancelText: 'Delete',
      btnCancelOnPress: () => _delete(id: id, name: name, surname: surname),
      // btnOkText: 'Update',
      // btnOkOnPress: () => _update(id: id, name: name, surname: surname),
    ).show();
  }

  void _update({
    required String id,
    required String name,
    required String surname,
  }) {}

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
