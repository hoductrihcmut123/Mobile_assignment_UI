import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Components/Tabbar.dart';

class AddTransactionForm extends StatefulWidget {
  const AddTransactionForm({Key? key}) : super(key: key);

  @override
  State<AddTransactionForm> createState() => _AddTransactionFormState();
}

class _AddTransactionFormState extends State<AddTransactionForm> {
  final DateTime _date = DateTime.now();
  String _dateDisplayed = 'Hôm nay';
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text('Thêm giao dịch'),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Color(0xfff5f5f5),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () => {Get.to(() => TabBarGeneral(index: 1))},
        ),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Column(
            children: <Widget>[
              Form(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: '0',
                        suffixText: 'đ',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Hãy nhập số tiền đã thu/chi';
                        }
                        return value;
                      },
                      keyboardType: TextInputType.number,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Chọn hạng mục',
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Ghi chú',
                      ),
                    ),
                    DateTimePicker(
                      type: DateTimePickerType.date,
                      initialValue: _dateDisplayed,
                      initialDate: _date,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                      confirmText: "CHỌN",
                      cancelText: "HUỶ",
                      style: GoogleFonts.getFont('Montserrat'),
                      onChanged: (val) => setState(() {
                        _dateDisplayed = val;
                      }),
                      validator: (val) {
                        print(val);
                        return null;
                      },
                      onSaved: (val) => setState(() {
                        _dateDisplayed = val!;
                        print(val);
                      }),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: _isChecked,
                          onChanged: (bool? newVal) => {
                            setState(() {
                              _isChecked = newVal!;
                            }),
                          },
                        ),
                        Flexible(
                          child: Column(
                            children: [
                              Text(
                                'Không tính vào báo cáo',
                                style: TextStyle(
                                  fontSize: 16
                                ),
                              ),
                              Text(
                                'Giao dịch này sẽ không được tính vào các phần Tổng quan và Thống kê',
                                style: TextStyle(
                                  color: Theme.of(context).disabledColor,
                                ),
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        ),
                      ],
                    ),
                    OutlinedButton(
                      onPressed: () => {Get.to(() => TabBarGeneral(index: 1))},
                      child: Text(
                        'Lưu',
                        style: GoogleFonts.getFont('Montserrat', fontSize: 18),
                      ),
                      style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Color(0xff0589f3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.start,
          ),
        ),
      ),
    );
  }
}
