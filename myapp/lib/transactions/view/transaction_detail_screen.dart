import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Components/Tabbar.dart';
import 'package:myapp/transactions/view/update_transaction_screen.dart';

class TransactionDetailScreen extends StatefulWidget {
  const TransactionDetailScreen({Key? key}) : super(key: key);

  @override
  State<TransactionDetailScreen> createState() =>
      _TransactionDetailScreenState();
}

class _TransactionDetailScreenState extends State<TransactionDetailScreen> {
  showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: Text(
        "Xoá giao dịch này?",
        textAlign: TextAlign.center,
      ),
      actions: [
        Row(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "HUỶ",
                style: TextStyle(
                  color: Color(0xff0589f3),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.to(() => TabBarGeneral(index: 1));
              },
              child: Text(
                "ĐỒNG Ý",
                style: TextStyle(
                  color: Color(0xff0589f3),
                ),
              ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
              onPressed: () => {Get.to(() => UpdateTransactionForm())},
              icon: Icon(Icons.edit)),
          IconButton(
              onPressed: () {
                showAlertDialog(context);
              },
              icon: Icon(Icons.delete)),
        ],
        foregroundColor: Colors.black,
        backgroundColor: Color(0xfff5f5f5),
        elevation: 2.0,
      ),
      body: Center(
        child: Column(
          children: const [
            Text("Chi tiết giao dịch"),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
