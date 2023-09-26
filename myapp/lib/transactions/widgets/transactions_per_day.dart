import 'package:flutter/material.dart';
import 'package:myapp/transactions/widgets/transaction.dart';

class TransactionsPerDay extends StatelessWidget {
  const TransactionsPerDay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox (
        child: Column(
          children: [
            ListTile(
              leading: Text('14'),
              title: Text('Today'),
              subtitle: Text('April 2022'),
              trailing: Text('Net đ'),
            ),
            Divider(
              color: Theme.of(context).dividerColor,
              height: 1,
              thickness: 1,
            ),
            ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Transaction();
              },
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
            ),
          ]
        ),
        width: MediaQuery.of(context).size.width,
      ),
      decoration: BoxDecoration(
        //borderRadius: BorderRadius.all(Radius.circular(12.0)),
        color: Color(0xfff5f5f5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
    );
  }
}
