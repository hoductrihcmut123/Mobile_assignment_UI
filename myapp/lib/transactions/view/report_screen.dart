import 'package:flutter/material.dart';
import 'package:myapp/transactions/widgets/charts.dart';
import 'package:myapp/transactions/widgets/time_range_picker.dart';
import 'package:myapp/transactions/widgets/transactions_overview.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromARGB(255, 234, 240, 242), //Theme.of(context).canvasColor,
      appBar: AppBar(
        title: Text('Thống kê thu chi'),
        backgroundColor: Color(0xfff5f5f5),
        foregroundColor: Colors.black,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: const [
          TimeRangePicker(),
        ],
        elevation: 2.0,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [
            TransactionsOverview(),
            ExpensesChart(),
            Row(
              children: [
                SizedBox(
                  child: DonutChart(),
                  width: MediaQuery.of(context).size.width / 2,
                ),
                SizedBox(
                  child: DonutChart(),
                  width: MediaQuery.of(context).size.width / 2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
