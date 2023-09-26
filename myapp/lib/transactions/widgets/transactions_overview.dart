import 'package:flutter/material.dart';

class TransactionsOverview extends StatelessWidget {
  const TransactionsOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Tổng thu',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  '300.000 đ',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      color: Theme.of(context).focusColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            Row(
              children: [
                Text(
                  'Tổng chi',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  '100.000 đ',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      color: Theme.of(context).errorColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            Divider(
              color: Theme.of(context).dividerColor,
              thickness: 1,
              indent: MediaQuery.of(context).size.width / 2,
            ),
            Row(
              children: const [
                Text(
                  '',
                ),
                Text(
                  '200.000 đ',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            )
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
      ),
      margin: EdgeInsets.only(bottom: 15.0),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Color(0xfff5f5f5), boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset.fromDirection(1, 1))
      ]),
    );
  }
}

class PeriodSummary extends StatelessWidget {
  const PeriodSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
