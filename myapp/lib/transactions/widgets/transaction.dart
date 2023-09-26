import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:myapp/transactions/view/transaction_detail_screen.dart';
import 'package:myapp/transactions/view/update_transaction_screen.dart';

class Transaction extends StatelessWidget {
  const Transaction({Key? key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Slidable(
      child: ListTile(
        leading: Icon(Icons.category, size: 30.0),
        title: Text('Category'),
        subtitle: Text('Note'),
        trailing: Text((Random().nextInt(100) * 10000).toString() + 'đ'),
        dense: true,
        onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TransactionDetailScreen()))
            }),
      endActionPane: ActionPane(
        extentRatio: 0.35,
        motion: DrawerMotion(),
        children: [
          SlidableAction(
            onPressed: (context) => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UpdateTransactionForm()))
            },
            backgroundColor: Theme.of(context).focusColor,
            foregroundColor: Colors.white,
            icon: Icons.edit,
            label: 'Sửa',
            autoClose: true,
          ),
          SlidableAction(
            onPressed: null,
            backgroundColor: Theme.of(context).errorColor,
            foregroundColor: Colors.white,
            icon: Icons.delete_outline_rounded,
            label: 'Xoá',
            autoClose: true,
          ),
        ]),
    );
  }
}
