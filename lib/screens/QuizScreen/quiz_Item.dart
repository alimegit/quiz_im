import 'package:flutter/material.dart';
import 'package:product_sale/data/data_repository.dart';
import 'package:product_sale/models/subject_model.dart';
import 'package:product_sale/screens/QuizScreen/appbar.dart';
class QuizItem extends StatefulWidget {
  const QuizItem({super.key, required this.subjectModel});
  final SubjectModel subjectModel;
  @override
  State<QuizItem> createState() => _QuizItemState();
}

class _QuizItemState extends State<QuizItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
        ],
      ),
    );
  } 
}
