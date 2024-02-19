import 'package:flutter/material.dart';
import 'package:product_sale/utils/colors/app_colors.dart';

import '../../models/subject_model.dart';

class GLoAppbar extends StatefulWidget {
  const GLoAppbar({super.key, required this.subjectModel});

  final SubjectModel subjectModel;

  @override
  State<GLoAppbar> createState() => _GLoAppbarState();
}

class _GLoAppbarState extends State<GLoAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back_ios_new_outlined),
      ),
      title: Text(widget.subjectModel.subjectName,style: TextStyle(color: AppColors.white),),
    );
  }
}
