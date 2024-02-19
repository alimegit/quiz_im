import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:product_sale/models/subject_model.dart';
import 'package:product_sale/screens/QuizScreen/appbar.dart';
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

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c_6A5AE0,
      body: Column(
        children: [
          GLoAppbar(subjectModel: widget.subjectModel),
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
              value: 0.8,
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
              Text("n"),
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
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(questions[0].questionText,
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
                  child:Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: selectIndex == 1? AppColors.c_9e2a2b:AppColors.c_d5b9b2,
                      borderRadius: BorderRadius.circular(18.r),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Center(
                        child: Text(
                          questions[0].variant1,
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
                  child:Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: selectIndex == 2? AppColors.c_9e2a2b:AppColors.c_d5b9b2,
                      borderRadius: BorderRadius.circular(18.r),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Center(
                        child: Text(
                          questions[0].variant2,
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
                      child:Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: selectIndex == 3? AppColors.c_9e2a2b:AppColors.c_d5b9b2,
                          borderRadius: BorderRadius.circular(18.r),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Center(
                            child: Text(
                              questions[0].variant3,
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
                      child:Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: selectIndex == 4? AppColors.c_9e2a2b:AppColors.c_d5b9b2,
                          borderRadius: BorderRadius.circular(18.r),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Center(
                            child: Text(
                              questions[0].variant4,
                              style: TextStyle(color: AppColors.c_7d4f50),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 80.h,),
                    Padding(
                      padding:  EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              padding: EdgeInsets.all(5.w),
                              decoration: BoxDecoration(
                              color: AppColors.c_38040e,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Text(
                                'Orqaga',
                                style: TextStyle(fontSize: 20.0,color: AppColors.c_bfd200),
                              ),
                            ),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {

                            },
                            child: Container(
                              padding: EdgeInsets.all(5.w),
                              decoration: BoxDecoration(
                                color: AppColors.c_38040e,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Text(
                                'Oldinga',
                                style: TextStyle(fontSize: 20.0,color: AppColors.c_bfd200),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
