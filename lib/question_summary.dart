import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/summary_item.dart';

// ignore: must_be_immutable
class QuestionSummary extends StatelessWidget {
  QuestionSummary(this.summaryData, {super.key});
  List<Map<String, dynamic>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return SummaryItem(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
