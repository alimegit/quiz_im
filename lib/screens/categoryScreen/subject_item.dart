import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_sale/data/data_repository.dart';
import 'package:product_sale/models/subject_model.dart';
import 'package:product_sale/utils/colors/app_colors.dart';
import 'package:product_sale/utils/images/app_images.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SubjectItem extends StatefulWidget {
  const SubjectItem(
      {Key? key,
        required this.color,
        required this.time,
        required this.onTap,
        required this.subjectModel,})
      : super(key:key);
  final Color color;
  final String time;
  final VoidCallback onTap;
  final SubjectModel subjectModel;


  @override
  State<SubjectItem> createState() => _SubjectItemState();
}

class _SubjectItemState extends State<SubjectItem> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 15.h,
        mainAxisSpacing: 15.h,
        childAspectRatio: 0.6,
        children: [
            ZoomTapAnimation(
              onTap:widget.onTap,
                child: Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Column(
                    children: [
                      Image.asset(widget.subjectModel.image,width: 20.w,height: 20.h,),
                      Text(widget.subjectModel.subjectName,style: TextStyle(color: AppColors.black,fontSize: 18.sp,fontWeight: FontWeight.w700),),
                      Text(widget.time,style: TextStyle(color:widget.color,fontWeight: FontWeight.w700,fontSize: 14.sp),)
                    ],
                  ),
                ),
            ),
        ],
      ),
    );
  }
}
