import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import 'package:thppy_administration/models/Country.dart';

import 'package:thppy_administration/widgets/drawer_widget.dart';

import 'package:thppy_administration/widgets/loading_widget.dart';
import 'package:thppy_administration/widgets/table_footer_widget.dart';
import 'package:thppy_administration/widgets/table_header_widget.dart';

class MobileQuizGroups extends StatefulWidget {
  const MobileQuizGroups({Key? key}) : super(key: key);

  @override
  State<MobileQuizGroups> createState() => _MobileQuizGroupsState();
}

class _MobileQuizGroupsState extends State<MobileQuizGroups> {
  List<Country>? _laptops;
  bool _isLoading = false;

  _refreshData() async {
    setState(() {
      _isLoading = true;
    });

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
                    TableFooterWidget(
                      title: 'Country',
                      onUpdatePressed: () {},
                      onDeletePressed: _delete,
                    )
                  ],
                ),
              ),
            ),
    );
  }

  void _add() {}
  void _update() {}

  void _delete() {}

  void _generateExcel() {}
}
