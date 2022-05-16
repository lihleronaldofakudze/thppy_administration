import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BarChartsWidget extends StatefulWidget {
  const BarChartsWidget({Key? key}) : super(key: key);

  @override
  State<BarChartsWidget> createState() => _BarChartsWidgetState();
}

class _BarChartsWidgetState extends State<BarChartsWidget> {
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
        child: SfCartesianChart(
          title: ChartTitle(text: 'Country Active Youth Users'),
          series: <ChartSeries>[
            BarSeries<CountryYouth, dynamic>(
              dataSource: _chartData,
              xValueMapper: (CountryYouth data, _) => data.name,
              yValueMapper: (CountryYouth data, _) => data.total,
            ),
          ],
          primaryXAxis: CategoryAxis(),
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
