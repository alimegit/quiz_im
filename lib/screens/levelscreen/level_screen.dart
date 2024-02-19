import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_sale/data/data_repository.dart';
import 'package:product_sale/models/subject_model.dart';
import 'package:product_sale/screens/levelscreen/level_item.dart';
import 'package:product_sale/utils/colors/app_colors.dart';
import 'package:product_sale/utils/images/app_images.dart';

import '../QuizScreen/quiz_screen.dart';

class LevelScreen extends StatefulWidget {
  const LevelScreen({
    super.key,required this.subjectModel
  });
  final SubjectModel subjectModel;

  @override
  State<LevelScreen> createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c_6A5AE0,
      body: Padding(
        padding: EdgeInsets.only(top: 200.h),
        child: Center(
          child: Column(
            children: [
              ...List.generate(
                DataRepository().allSubjects.length,
                (index) {
                  SubjectModel subject = DataRepository().allSubjects[index];
                  return LevelsItem(
                    subjectModel: subject,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return QuizScreen(subjectModel: widget.subjectModel,);
                          })
                      );

                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
