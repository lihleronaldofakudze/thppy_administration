import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class Region {
  final int id;
  final String regionName;
  final String countryName;
  final String status;
  final DateTime lastUpdate;

  Region({
    required this.id,
    required this.regionName,
    required this.countryName,
    required this.status,
    required this.lastUpdate,
  });

  factory Region.fromJson(Map<String, dynamic> json) => Region(
        id: json["id"],
        regionName: json["region_name"],
        countryName: json["country_name"],
        status: json["status"],
        lastUpdate: DateTime.parse(json["last_update"]),
      );
}

class RegionDataGridSource extends DataGridSource {
  RegionDataGridSource(this.regionList) {
    buildDataGridRows();
  }

  late List<DataGridRow> dataGridRows;
  late List<Region> regionList;

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
    dataGridRows = regionList.map<DataGridRow>((dataGridRow) {
      return DataGridRow(
        cells: [
          DataGridCell<String>(
            columnName: 'ID',
            value: dataGridRow.id.toString(),
          ),
          DataGridCell<String>(
            columnName: 'Region Name',
            value: dataGridRow.regionName,
          ),
          DataGridCell<String>(
            columnName: 'Country Name',
            value: dataGridRow.countryName,
          ),
          DataGridCell<String>(
            columnName: 'Status',
            value: dataGridRow.status,
          ),
          DataGridCell<String>(
            columnName: 'Last Update',
            value: DateFormat('yyyy-MM-dd HH:mm:ss')
                .format(dataGridRow.lastUpdate)
                .toString(),
          ),
        ],
      );
    }).toList(growable: false);
  }
}
