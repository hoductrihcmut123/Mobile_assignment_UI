import 'package:flutter/material.dart';

class UpdateTransactionForm extends StatefulWidget {
  const UpdateTransactionForm({Key? key}) : super(key: key);

  @override
  State<UpdateTransactionForm> createState() => _UpdateTransactionFormState();
}

class _UpdateTransactionFormState extends State<UpdateTransactionForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chỉnh sửa giao dịch'),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Color(0xfff5f5f5),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: Column(
          children: const [
            Text("Chỉnh sửa giao dịch"),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
