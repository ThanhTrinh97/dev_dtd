import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dev_dtd/controllers/question_controller.dart';
import 'package:dev_dtd/main.dart';

import 'components/body.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.home, size: 30,),
            onPressed: () {
              Get.to(()=>MyHomePage(title: 'Trang Chu'));
            },
          ),
        // Fluttter show the back button automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(onPressed: _controller.nextQuestion, child: Text("Skip")),
        ],
      ),
      body: Body(),
    );
  }
}

//trang_cau_hoi