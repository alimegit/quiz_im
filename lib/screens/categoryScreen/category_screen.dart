import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_sale/data/data_repository.dart';
import 'package:product_sale/models/subject_model.dart';
import 'package:product_sale/screens/categoryScreen/subject_item.dart';
import 'package:product_sale/utils/colors/app_colors.dart';

import '../levelscreen/level_screen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key, required this.subjectModel});
  final SubjectModel subjectModel;

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c_6A5AE0,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.c_6A5AE0,
        elevation: 0,

        title: Text(
          "Category",
          style: TextStyle(
              color: AppColors.white,
              fontSize: 24.sp,
              fontWeight: FontWeight.w900),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 15.h,
        crossAxisSpacing: 15.w,
        childAspectRatio: 0.7.h,
        children: [
          ...List.generate(
            DataRepository().allSubjects.length,
            (index) {
              SubjectModel subject = DataRepository().allSubjects[index];
              return SubjectItem(
                color: AppColors.white,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return LevelScreen(subjectModel: widget.subjectModel,);
                      })
                  );
                },
                subjectModel: subject,
              );
            },
          ),
        ],
      ),
    );
  }
}
