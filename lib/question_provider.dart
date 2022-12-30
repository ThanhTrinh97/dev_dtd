import 'dart:convert';
import '/model/question.dart';
import 'package:flutter/services.dart';

class QuestionProvider {
  //lấy ds từ dữ liệu json
  static Future<List<dynamic>> readJsonData() async {
    //dùng rootBuundle để doc file từ resoucrce ứng dụng
    var jsonText = await rootBundle.loadString('data/questions.json');
    //lay du lieu tu json (theo cau truc chua ds)
    var data = json.decode(jsonText);
    return data;
  }

  //lay ds lien he
  static Future<List<Question>> getAllQuestion() async {
    List<Question> lsResult = [];
    List<dynamic> data = await readJsonData();
    lsResult = data.map((e) => Question.formJson(e)).toList();
    return lsResult;
  }
  
}