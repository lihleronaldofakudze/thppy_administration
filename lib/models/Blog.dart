// id	title	trainer_name	description	pic	status	last_update

import 'package:flutter/material.dart';

class Blog {
  final int id;
  final String title;
  final String trainerName;
  final String description;
  final String pic;
  final String status;
  final DateTime lastUpdate;

  Blog({
    required this.id,
    required this.title,
    required this.trainerName,
    required this.description,
    required this.pic,
    required this.status,
    required this.lastUpdate,
  });

  factory Blog.fromJson(Map<String, dynamic> json) => Blog(
        id: json["id"],
        title: json["title"],
        trainerName: json["trainer_name"],
        description: json["description"],
        pic: json["pic"],
        status: json["status"],
        lastUpdate: DateTime.parse(json["last_update"]),
      );
}

class BlogDataGridSource extends DataGridSource {
  BlogDataGridSource(this.blogList) {
    buildDataGridRows();
  }

  late List<DataGridRow> dataGridRows;
  late List<Blog> blogList;

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
    ]);
  }

  void buildDataGridRows() {
    dataGridRows = blogList.map<DataGridRow>((dataGridRow) {
      return DataGridRow(
        cells: [
          DataGridCell<String>(
            columnName: 'ID',
            value: dataGridRow.id.toString(),
          ),
          DataGridCell<String>(
            columnName: 'Country Name',
            value: dataGridRow.description,
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
