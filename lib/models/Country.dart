import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class Country {
  final String id;
  final String countryName;
  final DateTime lastUpdate;
  final String status;

  Country({
    required this.id,
    required this.countryName,
    required this.lastUpdate,
    required this.status,
  });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        id: json["id"],
        countryName: json["country_name"],
        lastUpdate: DateTime.parse(json["last_update"]),
        status: json["status"],
      );
}

class CountryDataGridSource extends DataGridSource {
  CountryDataGridSource(this.countryList) {
    buildDataGridRows();
  }

  late List<DataGridRow> dataGridRows;
  late List<Country> countryList;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((dataGridCell) {
      return Container(
        alignment: Alignment.center,
        child: Text(
          dataGridCell.value.toString(),
          textAlign: TextAlign.center,
        ),
      );
    }).toList());
  }

  @override
  List<DataGridRow> get rows => dataGridRows;

  void buildDataGridRows() {
    dataGridRows = countryList.map<DataGridRow>((dataGridRow) {
      return DataGridRow(
        cells: [
          DataGridCell<String>(
            columnName: 'ID',
            value: dataGridRow.id.toString(),
          ),
          DataGridCell<String>(
            columnName: 'Country Name',
            value: dataGridRow.countryName,
          ),
          DataGridCell(
            columnName: 'Last Update',
            value: dataGridRow.lastUpdate.toString(),
          ),
          DataGridCell(
            columnName: 'Status',
            value: dataGridRow.status,
          ),
        ],
      );
    }).toList(growable: false);
  }
}
