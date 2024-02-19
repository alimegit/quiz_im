import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/subject_model.dart';
import '../utils/images/app_images.dart';

class DataRepository {
  DataRepository._();

  static final DataRepository instance = DataRepository._();

  factory DataRepository() => instance;

  List<SubjectModel> allSubjects = [];

  Future<void> loadSubjects() async {
    var data = await rootBundle.loadString(AppImages.testData);

    var decodedData = jsonDecode(data);
    allSubjects = (decodedData["data"] as List?)
            ?.map((e) => SubjectModel.fromJson(e))
            .toList() ??
        [];
  }
}
