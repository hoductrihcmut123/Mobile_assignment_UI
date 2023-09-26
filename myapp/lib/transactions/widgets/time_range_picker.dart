import 'package:flutter/material.dart';
import 'package:myapp/transactions/model/time_ranges.dart';

class TimeRangePicker extends StatefulWidget {
  const TimeRangePicker({Key? key}) : super(key: key);

  @override
  State<TimeRangePicker> createState() => _TimeRangePickerState();
}

class _TimeRangePickerState extends State<TimeRangePicker> {
  TimeRange _pickedValue = TimeRange.month;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<TimeRange>(
      icon: Icon(Icons.calendar_month_rounded),
      iconSize: 25,
      color: Color(0xfff5f5f5),
      elevation: 2,
      tooltip: "Chọn khoảng thời gian",
      initialValue: _pickedValue,
      itemBuilder: (context) => const [
        PopupMenuItem(
          value: TimeRange.day,
          child: Text("Ngày"),
        ),
        PopupMenuItem(
          value: TimeRange.week,
          child: Text("Tuần"),
        ),
        PopupMenuItem(
          value: TimeRange.month,
          child: Text("Tháng"),
        ),
        PopupMenuItem(
          value: TimeRange.quarter,
          child: Text("Quý"),
        ),
        PopupMenuItem(
          value: TimeRange.year,
          child: Text("Năm"),
        ),
        PopupMenuItem(
          value: TimeRange.all,
          child: Text("Tất cả"),
        )
      ],
      onSelected: (newVal) => setState(() {
        _pickedValue = newVal;
      }),
    );
  }
}
