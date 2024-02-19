import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_sale/models/subject_model.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(MyApp(subjectModel: null,));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key,required this.subjectModel});

  final SubjectModel? subjectModel;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: (context, child) {
        ScreenUtil.init(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(useMaterial3: false),
          home: child,
        );
      }, child: SplashScreen(),
    );
  }
}
