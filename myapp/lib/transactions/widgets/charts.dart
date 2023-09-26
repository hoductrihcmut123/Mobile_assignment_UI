import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

const List<Color> columnChartPalette = [
  Color(0xff5CC5F2),
  Color(0xffF25C5C),
];

const List<Color> donutChartPalette = [
  Color(0xffF25C5C),
  Color(0xff95F25C),
  Color(0xffF25C9B),
  Color(0xff5CC5F2),
  Color(0xffF2A45C),
  Color(0xff5F5CF2),
  Color(0xffF2C85C),
  Color(0xff5CF2C5),
  Color(0xffF2EC5C),
  Color(0xffDD5CF2),
];

class _TransactionData {
  final String time;
  final int income;
  final int expense;

  _TransactionData(this.time, this.income, this.expense);
}

List<_TransactionData> data = [
  _TransactionData('Jan', 35, 28),
  _TransactionData('Feb', 28, 34),
  _TransactionData('Mar', 34, 32),
  _TransactionData('Apr', 32, 40),
  _TransactionData('May', 40, 35)
];

class ExpensesChart extends StatefulWidget {
  const ExpensesChart({Key? key}) : super(key: key);

  @override
  State<ExpensesChart> createState() => _ExpensesChartState();
}

class _ExpensesChartState extends State<ExpensesChart> {
  final _data = data.sublist(0, 5);

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      primaryXAxis: CategoryAxis(),
      title: ChartTitle(text: 'Monthy Transactions Summary'),
      legend: Legend(isVisible: true),
      palette: columnChartPalette,
      series: <ChartSeries<_TransactionData, String>>[
        ColumnSeries<_TransactionData, String>(
          dataSource: _data,
          xValueMapper: (_TransactionData data, _) => data.time,
          yValueMapper: (_TransactionData data, _) => data.income,
          name: 'Income',
          dataLabelSettings: DataLabelSettings(isVisible: true),
          // color: Theme.of(context).focusColor,
          //trackPadding: 1,
        ),
        ColumnSeries<_TransactionData, String>(
          dataSource: _data,
          xValueMapper: (_TransactionData data, _) => data.time,
          yValueMapper: (_TransactionData data, _) => data.expense,
          name: 'Expense',
          dataLabelSettings: DataLabelSettings(isVisible: true),
          // color: Theme.of(context).errorColor,
          //trackPadding: 1,
        ),
      ],
    );
  }
}

class DonutChart extends StatefulWidget {
  const DonutChart({Key? key}) : super(key: key);

  @override
  State<DonutChart> createState() => _DonutChartState();
}

class _DonutChartState extends State<DonutChart> {
  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      palette: donutChartPalette,
      series: <DoughnutSeries<_TransactionData, String>>[
        DoughnutSeries<_TransactionData, String>(
          radius: '60%',
          innerRadius: '50%',
          explode: false,
          dataSource: data,
          xValueMapper: (_TransactionData data, _) => data.time,
          yValueMapper: (_TransactionData data, _) => data.income,
          dataLabelMapper: (_TransactionData data, _) => data.time,
          dataLabelSettings: DataLabelSettings(
            isVisible: true,
            labelPosition: ChartDataLabelPosition.outside,
            labelIntersectAction: LabelIntersectAction.shift,
            connectorLineSettings: ConnectorLineSettings(
                type: ConnectorType.line,
                length: '10%',
                color: Theme.of(context).cardColor),
          ),
        ),
      ],
    );
  }
}
