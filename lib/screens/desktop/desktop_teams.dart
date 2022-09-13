import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import 'package:thppy_administration/models/CityCenter.dart';
import 'package:thppy_administration/models/TableColumn.dart';
import 'package:thppy_administration/services/center_services.dart';
import 'package:thppy_administration/widgets/app_bar_widget.dart';
import 'package:thppy_administration/widgets/drawer_widget.dart';

import 'package:thppy_administration/widgets/loading_widget.dart';
import 'package:thppy_administration/widgets/table_footer_widget.dart';
import 'package:thppy_administration/widgets/table_header_widget.dart';

class DesktopTeams extends StatefulWidget {
  const DesktopTeams({Key? key}) : super(key: key);

  @override
  State<DesktopTeams> createState() => _DesktopTeamsState();
}

class _DesktopTeamsState extends State<DesktopTeams> {
  List<CityCenter>? _centers;
  late CenterDataGridSource _centerDataGridSource;
  bool _isLoading = false;
  final DataGridController _controller = DataGridController();

  _refreshData() async {
    setState(() {
      _isLoading = true;
    });

    _centers = await CenterServices().getCenters();
    _centerDataGridSource = CenterDataGridSource(_centers!);

    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _refreshData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(),
      body: Row(
        children: [
          const Expanded(
            flex: 1,
            child: DrawerWidget(),
          ),
          Expanded(
            flex: 4,
            child: _isLoading
                ? const LoadingWidget()
                : Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      child: Column(
                        children: [
                          TableHeaderWidget(
                            title: 'Centers',
                            onAddPressed: _add,
                            onGeneratePressed: _generateExcel,
                            onRefreshPressed: _refreshData,
                          ),
                          Expanded(
                            child: SfDataGrid(
                              source: _centerDataGridSource,
                              selectionMode: SelectionMode.single,
                              allowSorting: true,
                              gridLinesVisibility: GridLinesVisibility.both,
                              headerGridLinesVisibility:
                                  GridLinesVisibility.both,
                              controller: _controller,
                              columns: columns
                                  .map(
                                    (column) => gridColumnWidget(
                                        columnName: column.columnName,
                                        text: column.text),
                                  )
                                  .toList(),
                            ),
                          ),
                          TableFooterWidget(
                            title: 'Center',
                            onUpdatePressed: _update,
                            onDeletePressed: _delete,
                          )
                        ],
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  void _add() {}
  void _update() {
    if (_controller.selectedRow != null) {
      DataGridRow selectedRow = _controller.selectedRow!;
      String id = selectedRow.getCells().first.value;
      final _countryNameController = TextEditingController(
          text: selectedRow.getCells().elementAt(1).value.toString());
      final _statusController = TextEditingController(
          text: selectedRow.getCells().elementAt(2).value.toString());

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Update ${_countryNameController.text} Center'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: _countryNameController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    label: Text('Country Name'),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: _statusController,
                  decoration: const InputDecoration(
                    label: Text('Status'),
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            OutlinedButton(
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.pop(context);
                }),
            ElevatedButton(
              child: const Text('Update'),
              onPressed: () async {},
            ),
          ],
        ),
      );
    } else {
      AwesomeDialog(
        context: context,
        width: 500,
        dialogType: DialogType.ERROR,
        animType: AnimType.BOTTOMSLIDE,
        title: 'Error',
        desc: 'Please select a row to delete',
        btnOkText: 'Ok',
        btnOkOnPress: () {},
      ).show();
    }
  }

  void _delete() {
    if (_controller.selectedRow != null) {
      DataGridRow selectedRow = _controller.selectedRow!;
      String id = selectedRow.getCells().first.value;
      String name = selectedRow.getCells().elementAt(1).value.toString();
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text(
            'Delete Center',
            style: TextStyle(color: Colors.red),
          ),
          content: Text('Are your sure you want to delete $name?'),
          actions: [
            OutlinedButton(
                child: const Text('No'),
                onPressed: () {
                  Navigator.pop(context);
                }),
            ElevatedButton(
              child: const Text('Yes'),
              onPressed: () async {},
            ),
          ],
        ),
      );
    } else {
      AwesomeDialog(
        context: context,
        width: 500,
        dialogType: DialogType.ERROR,
        animType: AnimType.BOTTOMSLIDE,
        title: 'Error',
        desc: 'Please select a row to delete',
        btnOkText: 'Ok',
        btnOkOnPress: () {},
      ).show();
    }
  }

  void _generateExcel() {}

  final List<TableColumn> columns = [
    TableColumn(columnName: 'id', text: 'Id'),
    TableColumn(columnName: 'center_name', text: 'Center Name'),
    TableColumn(columnName: 'region_name', text: 'Region Name'),
    TableColumn(columnName: 'country_name', text: 'Country Name'),
    TableColumn(columnName: 'status', text: 'Status'),
    TableColumn(columnName: 'last_update', text: 'Last Update'),
  ];
}
