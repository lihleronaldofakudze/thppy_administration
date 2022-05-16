import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

GridColumn gridColumnWidget({
  required String columnName,
  required String text,
}) {
  return GridColumn(
    columnWidthMode: ColumnWidthMode.fill,
    columnName: columnName,
    label: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      color: Colors.red,
      alignment: Alignment.center,
      child: Text(
        text,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontFamily: 'Ubuntu',
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    ),
  );
}
