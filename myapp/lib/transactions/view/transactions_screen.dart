import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/transactions/view/report_screen.dart';
import 'package:myapp/transactions/view/add_transaction_screen.dart';
import 'package:myapp/transactions/widgets/time_range_picker.dart';
import 'package:myapp/transactions/widgets/period_picker.dart';
import 'package:myapp/transactions/widgets/transactions_overview.dart';
import 'package:myapp/transactions/widgets/transactions_per_day.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 8,
      length: 10,
      child: Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        appBar: AppBar(
          title: Text('Sổ thu chi'),
          centerTitle: true,
          actions: const [
            TimeRangePicker(),
          ],
          bottom: PreferredSize(
            child: PeriodPicker(),
            preferredSize: Size.fromHeight(35.0),
          ),
          foregroundColor: Colors.black,
          backgroundColor: Color(0xfff5f5f5),
          elevation: 2.0,
          automaticallyImplyLeading: false,
        ),
        body: TabBarView(
          children: List<int>.generate(10, (index) => index)
              .map((e) =>  (Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ListView.builder(
                            itemCount: 7,
                            itemBuilder: (BuildContext context, int index) {
                              if (index == 0) {
                                return TransactionsOverview();
                              } else if (index < 6) {
                                return TransactionsPerDay();
                              } else {
                                return SizedBox(
                                  height: 60
                                );
                              }
                            },
                          ),
                        ),
                        // SizedBox(
                        //   height: 35,
                        // )
                      ],
                    ),
                  )))
              .toList(),
        ),
        floatingActionButton: Padding(
          padding: EdgeInsets.only(bottom: 5),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
              ),
              Padding(
                padding: EdgeInsets.zero,
                child: FloatingActionButton.extended(
                  label: Text(
                    'Thống kê',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () => (Get.to(() => ReportScreen())),
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xff0589f3),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                  tooltip: 'Xem thống kê thu chi cho giai đoạn này',
                ),
              ),
              SizedBox(
                height: 60,
                width: 60,
                child: 
                FloatingActionButton(
                  onPressed: () => {Get.to(() => AddTransactionForm())},
                  child: Icon(
                    Icons.add,
                    size: 30,
                  ),
                  backgroundColor: Color(0xff0589f3),
                  elevation: 3.0,
                  tooltip: 'Thêm giao dịch',
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
