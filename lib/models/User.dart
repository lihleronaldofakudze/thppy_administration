// id	name	surname	phone	email	username	password	pic	permission_name	status	last_update

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class User {
  final int id;
  final String name;
  final String surname;
  final String phone;
  final String email;
  final String username;
  final String password;
  final String pic;
  final String permissionName;
  final String status;
  final DateTime lastUpdate;

  User({
    required this.id,
    required this.name,
    required this.surname,
    required this.phone,
    required this.email,
    required this.username,
    required this.password,
    required this.pic,
    required this.permissionName,
    required this.status,
    required this.lastUpdate,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        surname: json["surname"],
        phone: json["phone"],
        email: json["email"],
        username: json["username"],
        password: json["password"],
        pic: json["pic"],
        permissionName: json["permission_name"],
        status: json["status"],
        lastUpdate: DateTime.parse(json["last_update"]),
      );
}

class UserDataGridSource extends DataGridSource {
  UserDataGridSource(this.userList) {
    buildDataGridRows();
  }

  late List<DataGridRow> dataGridRows;
  late List<User> userList;

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
    dataGridRows = userList.map<DataGridRow>((dataGridRow) {
      return DataGridRow(
        cells: [
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
            columnName: 'Phone',
            value: dataGridRow.phone,
          ),
          DataGridCell<String>(
            columnName: 'Email',
            value: dataGridRow.email,
          ),
          DataGridCell<String>(
            columnName: 'Username',
            value: dataGridRow.username,
          ),
          DataGridCell<String>(
            columnName: 'Password',
            value: dataGridRow.password,
          ),
          DataGridCell<String>(
            columnName: 'Pic',
            value: dataGridRow.pic,
          ),
          DataGridCell<String>(
            columnName: 'Permission Name',
            value: dataGridRow.permissionName,
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
