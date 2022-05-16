import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:thppy_administration/models/Country.dart';
import 'package:thppy_administration/models/TableColumn.dart';
import 'package:thppy_administration/services/country_services.dart';
import 'package:thppy_administration/widgets/app_bar_widget.dart';
import 'package:thppy_administration/widgets/drawer_widget.dart';
import 'package:thppy_administration/widgets/grid_column_widget.dart';
import 'package:thppy_administration/widgets/loading_widget.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
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
                          const Text('Users Management'),
                          SfDataGrid(
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
                        ],
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  final List<TableColumn> columns = [
    TableColumn(columnName: 'id', text: 'Country Id'),
    TableColumn(columnName: 'country_name', text: 'Country Name'),
    TableColumn(columnName: 'last_update', text: 'Last Update'),
    TableColumn(columnName: 'status', text: 'Status'),
  ];
}
