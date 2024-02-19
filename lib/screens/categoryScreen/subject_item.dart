import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_sale/models/subject_model.dart';
import 'package:product_sale/utils/colors/app_colors.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SubjectItem extends StatefulWidget {
  const SubjectItem({
    Key? key,
    required this.color,
    required this.onTap,
    required this.subjectModel,
  }) : super(key: key);
  final Color color;
  final VoidCallback onTap;
  final SubjectModel subjectModel;

  @override
  State<SubjectItem> createState() => _SubjectItemState();
}

class _SubjectItemState extends State<SubjectItem> {
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding:  EdgeInsets.all(10.w.h),
        child: ZoomTapAnimation(
          onTap: widget.onTap,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Padding(
              padding:  EdgeInsets.all(15.w.h),
              child: Column(
                children: [
                  Image.asset(
                    widget.subjectModel.image,
                    width: 80.w,
                    height: 80.h,
                  ),
                  SizedBox(height: 10.h,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        widget.subjectModel.subjectName,
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      );
  }
}
