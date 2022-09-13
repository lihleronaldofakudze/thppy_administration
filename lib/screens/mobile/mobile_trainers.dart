import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import 'package:thppy_administration/models/Country.dart';
import 'package:thppy_administration/models/TableColumn.dart';
import 'package:thppy_administration/services/country_services.dart';
import 'package:thppy_administration/widgets/drawer_widget.dart';

import 'package:thppy_administration/widgets/loading_widget.dart';
import 'package:thppy_administration/widgets/table_footer_widget.dart';
import 'package:thppy_administration/widgets/table_header_widget.dart';

class MobileTrainers extends StatefulWidget {
  const MobileTrainers({Key? key}) : super(key: key);

  @override
  State<MobileTrainers> createState() => _MobileTrainersState();
}

class _MobileTrainersState extends State<MobileTrainers> {
  List<Country>? _laptops;
  late CountryDataGridSource _countryDataGridSource;
  bool _isLoading = false;
  final DataGridController _controller = DataGridController();

  _refreshData() async {
    setState(() {
      _isLoading = true;
    });

    _laptops = await CountryService().getAllCountries();
    _countryDataGridSource = CountryDataGridSource(_laptops!);

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
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text('Countries'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _refreshData,
          ),
        ],
      ),
      body: _isLoading
          ? const LoadingWidget()
          : Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              child: Card(
                child: Column(
                  children: [
                    TableHeaderWidget(
                      title: 'Countries',
                      onAddPressed: _add,
                      onGeneratePressed: _generateExcel,
                      onRefreshPressed: _refreshData,
                    ),
                    Expanded(
                      child: SfDataGrid(
                        source: _countryDataGridSource,
                        selectionMode: SelectionMode.single,
                        allowSorting: true,
                        gridLinesVisibility: GridLinesVisibility.both,
                        headerGridLinesVisibility: GridLinesVisibility.both,
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
                      title: 'Country',
                      onUpdatePressed: _update,
                      onDeletePressed: _delete,
                    )
                  ],
                ),
              ),
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
          title: Text('Update ${_countryNameController.text} Country'),
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
            'Delete Country',
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
    TableColumn(columnName: 'id', text: 'Country Id'),
    TableColumn(columnName: 'country_name', text: 'Country Name'),
    TableColumn(columnName: 'status', text: 'Status'),
    TableColumn(columnName: 'last_update', text: 'Last Update'),
  ];
}
