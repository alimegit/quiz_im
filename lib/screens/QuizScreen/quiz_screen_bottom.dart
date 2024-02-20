import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_sale/utils/styles/app_text_style.dart';

import '../../utils/colors/app_colors.dart';

class QuizScreenBottom extends StatelessWidget {
  const QuizScreenBottom({super.key,
    required this.onPrevious,
    required this.onNext,
    required this.nextButtonVisibility,
    required this.previousVisibility});

  final VoidCallback onPrevious;
  final VoidCallback onNext;
  final bool nextButtonVisibility;
  final bool previousVisibility;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 0.h,
          horizontal: 24.w
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Visibility(
              visible: previousVisibility,
              child: TextButton(style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      vertical: 15.h,
                      horizontal: 15.w
                  ),
                backgroundColor: AppColors.c_023047,
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r)
                ),
              ),
              onPressed:onPrevious,
              child: Text(
                "Oldingisi",
                style: AppTextStyle.gilroyBold.copyWith(color: AppColors.c_bfd200),
              ),
              ),
          ),
          Visibility(
            visible: nextButtonVisibility,
            child: TextButton(style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(
                  vertical: 15.h,
                  horizontal: 15.w
              ),
              backgroundColor: AppColors.c_023047,
              shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r)
              ),
            ),
              onPressed:onNext,
              child: Text(
                "Keyingisi",
                style: AppTextStyle.gilroyBold.copyWith(color: AppColors.c_bfd200),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
