import '../utils/utility_functions.dart';
import 'level_model.dart';
import 'quiz_model.dart';
class SubjectModel {
  final String subjectName;
  final List<QuizModel> questions;
  final LevelModel level;
  final String image;
  SubjectModel({
    required this.level,
    required this.questions,
    required this.subjectName,
    required this.image,
  });
  factory SubjectModel.fromJson(Map<String, dynamic> json){
    return SubjectModel(
      // color:(json["color"] as String? ?? "FFFFFF".toColor()),
      level: getLevelFromString(json["level"] as String? ?? "medium"),
      subjectName: json["subject_name"] as String? ?? "",
      questions:(json["questions"] as List?)
          ?.map((e) => QuizModel.fromJson(e))
          .toList() ??
          [],
      image: json["image"] as String,
    );
  }
}