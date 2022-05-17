// id	center_name	country_name	region_name	status	last_update

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class CityCenter {
  final int id;
  final String centerName;
  final String countryName;
  final String regionName;
  final String status;
  final DateTime lastUpdate;

  CityCenter({
    required this.id,
    required this.centerName,
    required this.countryName,
    required this.regionName,
    required this.status,
    required this.lastUpdate,
  });

  factory CityCenter.fromJson(Map<String, dynamic> json) => CityCenter(
        id: json["id"],
        centerName: json["center_name"],
        countryName: json["country_name"],
        regionName: json["region_name"],
        status: json["status"],
        lastUpdate: DateTime.parse(json["last_update"]),
      );
}

class CenterDataGridSource extends DataGridSource {
  CenterDataGridSource(this.centerList) {
    buildDataGridRows();
  }

  late List<DataGridRow> dataGridRows;
  late List<CityCenter> centerList;

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
    dataGridRows = centerList.map<DataGridRow>((dataGridRow) {
      return DataGridRow(
        cells: [
          DataGridCell<String>(
            columnName: 'ID',
            value: dataGridRow.id.toString(),
          ),
          DataGridCell<String>(
            columnName: 'Center Name',
            value: dataGridRow.centerName,
          ),
          DataGridCell<String>(
            columnName: 'Country Name',
            value: dataGridRow.countryName,
          ),
          DataGridCell<String>(
            columnName: 'Region Name',
            value: dataGridRow.regionName,
          ),
          DataGridCell<String>(
            columnName: 'Status',
            value: dataGridRow.status,
          ),
          DataGridCell<String>(
            columnName: 'Last Update',
            value: DateFormat('yyyy-MM-dd - kk:mm')
                .format(dataGridRow.lastUpdate)
                .toString(),
          ),
        ],
      );
    }).toList(growable: false);
  }
}
