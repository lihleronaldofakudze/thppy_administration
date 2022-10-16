import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thppy_administration/models/CityCenter.dart';
import 'package:thppy_administration/services/youth_services.dart';
import 'package:thppy_administration/widgets/drawer_widget.dart';

class CentersScreen extends StatefulWidget {
  const CentersScreen({Key? key}) : super(key: key);

  @override
  State<CentersScreen> createState() => _CentersScreenState();
}

class _CentersScreenState extends State<CentersScreen> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    final centers = Provider.of<List<CityCenter>>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Add New Center'),
        icon: const Icon(
          Icons.add_rounded,
        ),
      ),
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text('Centers Data Management'),
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
        alignment: Alignment.topCenter,
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              showBottomBorder: true,
              columns: const [
                DataColumn(label: Text('Country')),
                DataColumn(label: Text('Region')),
                DataColumn(label: Text('Center')),
              ],
              rows: centers
                  .map(
                    (center) => DataRow(
                      cells: [
                        DataCell(
                          Text(center.center),
                          onTap: () => _onClick(
                            id: center.id,
                            name: center.country,
                          ),
                        ),
                        DataCell(
                          Text(center.center),
                          onTap: () => _onClick(
                            id: center.id,
                            name: center.region,
                          ),
                        ),
                        DataCell(
                          Text(center.center),
                          onTap: () => _onClick(
                            id: center.id,
                            name: center.center,
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

  void _onClick({
    required String id,
    required String name,
  }) {
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
