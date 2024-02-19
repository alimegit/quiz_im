import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:product_sale/data/data_repository.dart';
import 'package:product_sale/models/quiz_model.dart';
import 'package:product_sale/screens/QuizScreen/quiz_screen.dart';
import 'package:product_sale/utils/colors/app_colors.dart';
import 'package:product_sale/utils/images/app_images.dart';

import '../models/subject_model.dart';
import 'categoryScreen/category_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    Key? key,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _init();
    super.initState();
  }

  _init() async {
    DataRepository.instance.loadSubjects();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const CategoryScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c_6A5AE0,
      body: Column(
        children: [
          Center(
            child: Lottie.asset(AppImages.splashjson),
          )
        ],
      ),
    );
  }
}
