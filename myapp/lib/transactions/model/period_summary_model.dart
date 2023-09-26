import 'package:flutter/material.dart';
import 'package:myapp/transactions/model/time_ranges.dart';

class PeriodSummaryData {
  int totalIncome;
  int totalExpenses;
  double? avgExpenses;
  TimeRange timeRange;
  DateTimeRange period;

  PeriodSummaryData(
      this.totalIncome, this.totalExpenses, this.timeRange, this.period) {
    avgExpenses = totalExpenses / period.duration.inDays;
  }

  getTotExpenses() {
    return totalExpenses;
  }

  getPreviousData() {
    return null;
  }

  double compareToPrevious() {
    return 0.0;
  }
}
