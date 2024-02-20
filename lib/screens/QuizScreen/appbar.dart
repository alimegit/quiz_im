import 'package:flutter/material.dart';
import 'package:product_sale/utils/colors/app_colors.dart';

import '../../models/subject_model.dart';

class GLoAppbar extends StatefulWidget {
  const GLoAppbar({super.key, required this.subjectModel, this.result});

  final SubjectModel subjectModel;
  final VoidCallback? result;

  @override
  State<GLoAppbar> createState() => _GLoAppbarState();
}

class _GLoAppbarState extends State<GLoAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          onPressed: widget.result ?? () {},
          icon: Icon(Icons.back_hand),
        ),
      ],
      centerTitle: true,
      backgroundColor: AppColors.c_7048d4,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios_new_outlined),
      ),
      title: Text(
        widget.subjectModel.subjectName,
        style: TextStyle(color: AppColors.white),
      ),
    );
  }
}
