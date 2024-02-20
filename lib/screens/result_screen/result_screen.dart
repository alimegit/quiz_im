import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:product_sale/screens/result_screen/answer_report.dart';
import 'package:product_sale/utils/colors/app_colors.dart';

import '../../utils/styles/app_text_style.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key, required this.abstractReport});

  final AnswerReport abstractReport;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {

  @override
  void initState() {
    print(widget.abstractReport.trueAnswersCount);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c_6A5AE0,
      appBar: AppBar(
        backgroundColor: AppColors.c_7048d4,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Natijanggiz",
          style: TextStyle(
              color: AppColors.c_162023,
              fontWeight: FontWeight.w700,
              fontSize: 20.sp),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: Column(
        children: [
          Text(
            "To'gri javoblar ${widget.abstractReport.trueAnswersCount}",
            style: TextStyle(
                color: AppColors.c_f4f1de,
                fontSize: 20.sp,
                fontWeight: FontWeight.w900),
          ),
          SizedBox(height: 20.h,),
          CircularPercentIndicator(
            circularStrokeCap: CircularStrokeCap.round,
            startAngle: 90,
            radius: 70.r,
            lineWidth: 13.w,
            center: Text("d",
              style: AppTextStyle.gilroyBold.copyWith(color: AppColors.white, fontSize: 20.sp),
            ),
            progressColor: AppColors.c_F2954D,
            backgroundColor: AppColors.white,
          ),
        ],
      ),
    );
  }
}
