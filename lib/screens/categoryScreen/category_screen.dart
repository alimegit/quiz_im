import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_sale/data/data_repository.dart';
import 'package:product_sale/models/subject_model.dart';
import 'package:product_sale/screens/categoryScreen/subject_item.dart';
import 'package:product_sale/utils/colors/app_colors.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

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
          backgroundColor:AppColors.c_6A5AE0,
          elevation: 0,
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new_outlined)),
          title: Text("Category",style: TextStyle(color: AppColors.white,fontSize: 24.sp,fontWeight: FontWeight.w900),),
        ),
        body: Column(
          children: [
            ...List.generate(DataRepository().allSubjects.length, (index) {
              SubjectModel subject = DataRepository().allSubjects[index];
              return SubjectItem(
                color: AppColors.white,
                  time: "12:00",
                  onTap: () {},
                  subjectModel: subject,
              );},

            )
          ],
        )
    );
  }
}
