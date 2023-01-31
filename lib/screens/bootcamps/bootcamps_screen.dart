import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:thppy_administration/screens/bootcamps/add_bootcamp_dialog.dart';
import 'package:thppy_administration/screens/bootcamps/bootcamp.dart';
import 'package:thppy_administration/widgets/actions_widget.dart';
import 'package:thppy_administration/widgets/header_widget.dart';

class BootcampsScreen extends StatefulWidget {
  const BootcampsScreen({Key? key}) : super(key: key);

  @override
  State<BootcampsScreen> createState() => _BootcampsScreenState();
}

class _BootcampsScreenState extends State<BootcampsScreen> {
  @override
  Widget build(BuildContext context) {
    final bootcamps = Provider.of<List<Bootcamp>>(context);
    return HeaderWidget(
      title: 'Bootcamps',
      onGeneratePressed: () {},
      onAddPressed: () => showDialog(
        context: context,
        builder: (context) => const AddBootcampDialog(),
        barrierDismissible: false,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            showCheckboxColumn: false,
            showBottomBorder: true,
            headingRowColor: MaterialStateColor.resolveWith(
              (states) => Colors.black,
            ),
            headingTextStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            columns: const [
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Audience')),
              DataColumn(label: Text('Status')),
              DataColumn(label: Text('Last Updated')),
              DataColumn(label: Text('Actions')),
            ],
            rows: bootcamps
                .map((bootcamp) => DataRow(
                      cells: [
                        DataCell(Text(bootcamp.bootcampName)),
                        DataCell(Text(bootcamp.targetAudience)),
                        DataCell(Text(bootcamp.status)),
                        DataCell(Text(
                          DateFormat('dd/MM/yyyy')
                              .format(bootcamp.lastUpdate.toDate()),
                        )),
                        DataCell(ActionsWidget(
                          onEditPressed: () {},
                          onDeletePressed: () {},
                        )),
                      ],
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
