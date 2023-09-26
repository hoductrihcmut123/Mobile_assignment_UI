import 'package:flutter/material.dart';

class PeriodPicker extends StatefulWidget {
  const PeriodPicker({Key? key}) : super(key: key);

  @override
  State<PeriodPicker> createState() => _PeriodPickerState();
}

class _PeriodPickerState extends State<PeriodPicker> {
  final List<String> _periods = [
    "9/2021",
    "10/2021",
    "11/2021",
    "12/2021",
    "1/2022",
    "2/2022",
    "3/2022",
    "Tháng trước",
    "Tháng này",
    "Tương lai"
  ];

  @override
  Widget build(BuildContext context) {
    return TabBar(
        isScrollable: true,
        indicatorColor: Theme.of(context).focusColor,
        labelColor: Theme.of(context).focusColor,
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelColor: Theme.of(context).disabledColor,
        tabs: _periods.map(
          (e) => Tab(
            child: SizedBox(
              child: Text(
                e,
                style: TextStyle(
                  fontSize: 16
                ),
                textAlign: TextAlign.center,
              ),
              width: MediaQuery.of(context).size.width / 4,
            )
          )
        ).toList()
    );
    
  }
}
