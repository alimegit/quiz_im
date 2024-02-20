import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:product_sale/models/subject_model.dart';
import 'package:product_sale/screens/QuizScreen/appbar.dart';
import 'package:product_sale/screens/QuizScreen/quiz_screen_bottom.dart';
import 'package:product_sale/screens/result_screen/answer_report.dart';
import 'package:product_sale/screens/result_screen/result_screen.dart';
import 'package:product_sale/utils/colors/app_colors.dart';
import '../../models/quiz_model.dart';
import '../../utils/images/app_images.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key, required this.subjectModel});

  final SubjectModel subjectModel;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int count = 0;

  Future<void> _timerLogic() async {
    for (int i = questions.length * 5; i>=0;i--) {
      setState(() {
        count = i;
      });
      await Future.delayed(const Duration(
        seconds: 1,
      ));

    }
    _navigateToResultScreen();
  }

  List<QuizModel> questions = [];

  int activeIndex = 0;
  int selectIndex = 0;
  Map<int, int> selectedAnswers = {};

  @override
  void initState() {
    questions = widget.subjectModel.questions;

    for (int i = 0; i < questions.length; i++) {
      selectedAnswers[i] = 0;
    }
    _timerLogic();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c_6A5AE0,
      body: Column(
        children: [
          GLoAppbar(
            subjectModel: widget.subjectModel,
            result: _navigateToResultScreen,
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: LinearProgressIndicator(
              minHeight: 10.h,
              backgroundColor: AppColors.c_162023,
              borderRadius: BorderRadius.circular(8.r),
              color: AppColors.c_F2954D,
              value: count/(questions.length*5),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset(
                AppImages.timer,
                width: 20.w,
                height: 20.h,
              ),
              SizedBox(width: 5.w,),
              Padding(
                padding:  EdgeInsets.only(right: 10.w),
                child: Text(getMinutelyText(count)),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(questions[activeIndex].questionText,
                        style: TextStyle(
                            color: AppColors.c_023047,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: 50.h,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectIndex = 1;
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: selectIndex == 1
                              ? AppColors.c_9e2a2b
                              : AppColors.c_d5b9b2,
                          borderRadius: BorderRadius.circular(18.r),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Center(
                            child: Text(
                              questions[activeIndex].variant1,
                              style: TextStyle(color: AppColors.c_7d4f50),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectIndex = 2;
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: selectIndex == 2
                              ? AppColors.c_9e2a2b
                              : AppColors.c_d5b9b2,
                          borderRadius: BorderRadius.circular(18.r),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Center(
                            child: Text(
                              questions[activeIndex].variant2,
                              style: TextStyle(color: AppColors.c_7d4f50),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectIndex = 3;
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: selectIndex == 3
                              ? AppColors.c_9e2a2b
                              : AppColors.c_d5b9b2,
                          borderRadius: BorderRadius.circular(18.r),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Center(
                            child: Text(
                              questions[activeIndex].variant3,
                              style: TextStyle(color: AppColors.c_7d4f50),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectIndex = 4;
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: selectIndex == 4
                              ? AppColors.c_9e2a2b
                              : AppColors.c_d5b9b2,
                          borderRadius: BorderRadius.circular(18.r),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Center(
                            child: Text(
                              questions[activeIndex].variant4,
                              style: TextStyle(color: AppColors.c_7d4f50),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
          QuizScreenBottom(
            previousVisibility: activeIndex != 0,
            nextButtonVisibility: activeIndex != questions.length - 1,
            onPrevious: () {
              if (activeIndex >= 1) {
                activeIndex--;
                selectIndex = selectedAnswers[activeIndex]!;
              }
              setState(() {});
            },
            onNext: () {
              selectIndex = 0;
              activeIndex++;

              setState(() {});
            },
          )
        ],
      ),
    );
  }
  _navigateToResultScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(abstractReport:AnswerReport(
          subjectModel: widget.subjectModel,
          selectedAnswers: selectedAnswers,
          spentTime: questions.length*10-count,
        ),),
      ),
    );
  }
  String getMinutelyText(int timeInSeconds) {
    int min = timeInSeconds ~/ 60;
    int sec = timeInSeconds % 60;

    String minute = min.toString().length <= 1 ? "0$min" : "$min";
    String second = sec.toString().length <= 1 ? "0$sec" : "$sec";

    return "$minute : $second";
  }
}
