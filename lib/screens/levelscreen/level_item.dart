import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_sale/data/data_repository.dart';
import 'package:product_sale/models/subject_model.dart';
import 'package:product_sale/utils/colors/app_colors.dart';

import '../../utils/images/app_images.dart';

class LevelsItem extends StatefulWidget {
  const LevelsItem({super.key, required this.subjectModel, required this.onTap});

  final SubjectModel subjectModel;
  final VoidCallback onTap;

  @override
  State<LevelsItem> createState() => _LevelsItemState();
}

class _LevelsItemState extends State<LevelsItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: Stack(
              children: [
                TextButton(onPressed: widget.onTap, child:
                Image.asset(AppImages.levelback),),
                Positioned(
                  left: 70.w,
                    top: 10.h,
                    child: Text(
                  widget.subjectModel.level.name,
                  style: TextStyle(color: AppColors.white, fontSize: 20.sp),
                ),),
              ],
            ),
          ),
      ],
    );
  }
}
