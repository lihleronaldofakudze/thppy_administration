import 'package:flutter/material.dart';

import 'package:thppy_administration/models/Country.dart';

import 'package:thppy_administration/widgets/app_bar_widget.dart';
import 'package:thppy_administration/widgets/drawer_widget.dart';

import 'package:thppy_administration/widgets/loading_widget.dart';
import 'package:thppy_administration/widgets/table_footer_widget.dart';
import 'package:thppy_administration/widgets/table_header_widget.dart';

class DesktopCountries extends StatefulWidget {
  const DesktopCountries({Key? key}) : super(key: key);

  @override
  State<DesktopCountries> createState() => _DesktopCountriesState();
}

class _DesktopCountriesState extends State<DesktopCountries> {
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
          ),
        ],
      ),
    );
  }

  void _add() {}
  void _delete() {}

  void _update() {}

  void _generateExcel() {}
}
