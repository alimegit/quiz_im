import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_sale/models/subject_model.dart';
import 'package:product_sale/screens/QuizScreen/appbar.dart';
import 'package:product_sale/utils/colors/app_colors.dart';

import '../../models/quiz_model.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key, required this.subjectModel});

  final SubjectModel subjectModel;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<QuizModel> questions = [];

  int activeIndex = 0;
  int selectIndex = 0;
  Map<int, int> selectedAnswers = {};
  @override
  void initState() {
    questions = widget.subjectModel.questions;

    for(int i = 0; i<questions.length;i++){
      selectedAnswers[i] = 0;
    }

    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c_6A5AE0,
      body: Column(
        children: [
          GLoAppbar(subjectModel: widget.subjectModel),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal:46.w),
                    decoration: BoxDecoration(
                      color: AppColors.c_7048d4,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Column(
                      children: [
                        Text(questions[0].questionText),
                        // SizedBox(height: 10.h,),
                        // Text(questions[0].variant1),
                        // Text(questions[0].variant2),
                        // Text(questions[0].variant3),
                        // Text(questions[0].variant4),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
