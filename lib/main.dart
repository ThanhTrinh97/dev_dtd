import 'components/ChonCauTraLoi/srceens/quiz/quiz_screen.dart';
import 'components/HuongDanCachChoi.dart';
import 'components/defeat.dart';
import 'components/vitory.dart';
import 'package:flutter/material.dart';
import 'components/BangXepHang.dart';
import 'package:get/get.dart';
import 'controllers/question_controller.dart';

void main() {
  QuestionController;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Row(children: [
        ElevatedButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QuizScreen(),
            )
          );
        } ,
        child: Text('bat dau choi'),
        ),
        ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BangXepHang(),
            )
          );
        },
        child: Text('BXH'),
        ),
        ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Victory(),
            )
          );
        },
        child: Text('Chien Thang'),
        ),
        ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Defeat(),
            )
          );
        },
        child: Text('That bai'),
        ),
      ],),
      
    );
  }
}
