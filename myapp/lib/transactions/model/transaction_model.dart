import 'dart:ffi';

import 'package:myapp/transactions/model/category_model.dart';

class TransactionModel {
  Double amount;
  CategoryModel category;
  String note;
  DateTime date;

  TransactionModel(this.amount, this.category, this.note, this.date);

  TransactionModel.withoutDate(this.amount, this.category, this.note)
      : date = DateTime.now();
}
