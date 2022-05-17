import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CircularChartsWidget extends StatefulWidget {
  const CircularChartsWidget({Key? key}) : super(key: key);

  @override
  State<CircularChartsWidget> createState() => _CircularChartsWidgetState();
}

class _CircularChartsWidgetState extends State<CircularChartsWidget> {
  late List<CountryYouth> _chartData;
  List<CountryYouth> getChartData() {
    final List<CountryYouth> chartData = [
      CountryYouth(
        'Eswatini',
        335,
      ),
      CountryYouth(
        'Lesotho',
        123,
      ),
      CountryYouth(
        'Botswana',
        268,
      ),
      CountryYouth(
        'South Africa',
        95,
      ),
      CountryYouth(
        'Nigeria',
        67,
      ),
    ];
    return chartData;
  }

  @override
  void initState() {
    super.initState();
    _chartData = getChartData();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SfCircularChart(
          title: ChartTitle(text: 'Country Active Youth Users'),
          series: <CircularSeries>[
            DoughnutSeries<CountryYouth, dynamic>(
                dataSource: _chartData,
                xValueMapper: (CountryYouth data, _) => data.name,
                yValueMapper: (CountryYouth data, _) => data.total,
                dataLabelSettings: const DataLabelSettings(
                  isVisible: true,
                  labelPosition: ChartDataLabelPosition.outside,
                  connectorLineSettings: ConnectorLineSettings(
                    color: Colors.transparent,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class CountryYouth {
  CountryYouth(this.name, this.total);
  final String name;
  final int total;
}
