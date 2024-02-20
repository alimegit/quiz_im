import 'package:flutter/material.dart';
import 'package:product_sale/models/subject_model.dart';
import 'package:product_sale/screens/QuizScreen/appbar.dart';
import 'package:product_sale/screens/result_screen/answer_report.dart';
import 'package:product_sale/utils/colors/app_colors.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key, required this.abstractReport});

  final AnswerReport abstractReport;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  int trueAnswersCount = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c_6A5AE0,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: Column(
        children: [
          Text("To'gri javoblar${widget.abstractReport.trueAnswersCount}")
        ],
      ),
    );
  }
}
