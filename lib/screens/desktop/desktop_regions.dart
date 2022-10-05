import 'package:flutter/material.dart';

import 'package:thppy_administration/models/Region.dart';

import 'package:thppy_administration/widgets/app_bar_widget.dart';
import 'package:thppy_administration/widgets/drawer_widget.dart';

import 'package:thppy_administration/widgets/loading_widget.dart';
import 'package:thppy_administration/widgets/table_footer_widget.dart';
import 'package:thppy_administration/widgets/table_header_widget.dart';

class DesktopRegions extends StatefulWidget {
  const DesktopRegions({Key? key}) : super(key: key);

  @override
  State<DesktopRegions> createState() => _DesktopRegionsState();
}

class _DesktopRegionsState extends State<DesktopRegions> {
  List<Region>? _regions;
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
                          TableHeaderWidget(
                            title: 'Regions',
                            onAddPressed: _add,
                            onGeneratePressed: _generateExcel,
                            onRefreshPressed: _refreshData,
                          ),
                          TableFooterWidget(
                            title: 'Region',
                            onUpdatePressed: () {},
                            onDeletePressed: _delete,
                          )
                        ],
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  void _add() {}

  void _delete() {}

  void _generateExcel() {}
}
