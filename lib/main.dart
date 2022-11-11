import 'package:dev_dtd/components/ChonCauTraLoi/srceens/quiz/quiz_screen.dart';
import 'package:dev_dtd/components/HuongDanCachChoi.dart';
import 'package:flutter/material.dart';
import 'components/ChonDoKhoCauHoi.dart';
import 'components/BangXepHang.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Row(children: [
        ElevatedButton(
        onPressed: () {
          Get.to(QuizScreen());
        },
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
      ],),
      
    );
  }
}
