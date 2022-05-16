// id	name	surname	natid	gender	phone	email	pic	hashtag	country_name	region_name	center_name	organization	status	last_update

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class Ambassador {
  final int id;
  final String name;
  final String surname;
  final String natid;
  final String gender;
  final String phone;
  final String email;
  final String pic;
  final String hashtag;
  final String countryName;
  final String regionName;
  final String centerName;
  final String organization;
  final String status;
  final DateTime lastUpdate;

  Ambassador({
    required this.id,
    required this.name,
    required this.surname,
    required this.natid,
    required this.gender,
    required this.phone,
    required this.email,
    required this.pic,
    required this.hashtag,
    required this.countryName,
    required this.regionName,
    required this.centerName,
    required this.organization,
    required this.status,
    required this.lastUpdate,
  });

  factory Ambassador.fromJson(Map<String, dynamic> json) => Ambassador(
        id: json["id"],
        name: json["name"],
        surname: json["surname"],
        natid: json["natid"],
        gender: json["gender"],
        phone: json["phone"],
        email: json["email"],
        pic: json["pic"],
        hashtag: json["hashtag"],
        countryName: json["country_name"],
        regionName: json["region_name"],
        centerName: json["center_name"],
        organization: json["organization"],
        status: json["status"],
        lastUpdate: DateTime.parse(json["last_update"]),
      );
}

class AmbassadorDataGridSource extends DataGridSource {
  AmbassadorDataGridSource(this.ambassadorList) {
    buildDataGridRows();
  }

  late List<DataGridRow> dataGridRows;
  late List<Ambassador> ambassadorList;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(cells: [
      Container(
        alignment: Alignment.centerRight,
        child: Text(
          row.getCells()[0].value.toString(),
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 18),
        ),
      ),
      Container(
        alignment: Alignment.centerRight,
        child: Text(
          row.getCells()[1].value.toString(),
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 18),
        ),
      ),
      Container(
        alignment: Alignment.centerRight,
        child: Text(
          row.getCells()[2].value.toString(),
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 18),
        ),
      ),
      Container(
        alignment: Alignment.centerRight,
        child: Text(
          row.getCells()[3].value.toString(),
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 18),
        ),
      ),
      Container(
        alignment: Alignment.centerRight,
        child: Text(
          row.getCells()[4].value.toString(),
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 18),
        ),
      ),
      Container(
        alignment: Alignment.centerRight,
        child: Text(
          row.getCells()[5].value.toString(),
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 18),
        ),
      ),
      Container(
        alignment: Alignment.centerRight,
        child: Text(
          row.getCells()[6].value.toString(),
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 18),
        ),
      ),
      Container(
        alignment: Alignment.centerRight,
        child: Text(
          row.getCells()[7].value.toString(),
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 18),
        ),
      ),
      Container(
        alignment: Alignment.centerRight,
        child: Text(
          row.getCells()[8].value.toString(),
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 18),
        ),
      ),
      Container(
        alignment: Alignment.centerRight,
        child: Text(
          row.getCells()[9].value.toString(),
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 18),
        ),
      ),
      Container(
        alignment: Alignment.centerRight,
        child: Text(
          row.getCells()[10].value.toString(),
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 18),
        ),
      ),
      Container(
        alignment: Alignment.centerRight,
        child: Text(
          row.getCells()[11].value.toString(),
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 18),
        ),
      ),
      Container(
        alignment: Alignment.centerRight,
        child: Text(
          row.getCells()[12].value.toString(),
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 18),
        ),
      ),
      Container(
        alignment: Alignment.centerRight,
        child: Text(
          row.getCells()[13].value.toString(),
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    ]);
  }

  @override
  List<DataGridRow> get rows => dataGridRows;

  void buildDataGridRows() {
    dataGridRows = ambassadorList.map<DataGridRow>((dataGridRow) {
      return DataGridRow(cells: [
        DataGridCell<String>(
          columnName: 'ID',
          value: dataGridRow.id.toString(),
        ),
        DataGridCell<String>(
          columnName: 'Name',
          value: dataGridRow.name,
        ),
        DataGridCell<String>(
          columnName: 'Surname',
          value: dataGridRow.surname,
        ),
        DataGridCell<String>(
          columnName: 'National ID',
          value: dataGridRow.natid,
        ),
        DataGridCell<String>(
          columnName: 'Gender',
          value: dataGridRow.gender,
        ),
        DataGridCell<String>(
          columnName: 'Phone',
          value: dataGridRow.phone,
        ),
        DataGridCell<String>(
          columnName: 'Email',
          value: dataGridRow.email,
        ),
        DataGridCell<String>(
          columnName: 'Picture',
          value: dataGridRow.pic,
        ),
        DataGridCell<String>(
          columnName: 'Hashtag',
          value: dataGridRow.hashtag,
        ),
        DataGridCell<String>(
          columnName: 'Country',
          value: dataGridRow.countryName,
        ),
        DataGridCell<String>(
          columnName: 'Region',
          value: dataGridRow.regionName,
        ),
        DataGridCell<String>(
          columnName: 'Center',
          value: dataGridRow.centerName,
        ),
        DataGridCell<String>(
          columnName: 'Organization',
          value: dataGridRow.organization,
        ),
        DataGridCell<String>(
          columnName: 'Status',
          value: dataGridRow.status,
        ),
        DataGridCell<String>(
          columnName: 'Last Update',
          value: dataGridRow.lastUpdate.toString(),
        ),
      ]);
    }).toList();
  }
}
