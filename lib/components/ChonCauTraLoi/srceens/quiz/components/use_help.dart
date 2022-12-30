import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../controllers/question_controller.dart';

class UseHelp extends StatefulWidget {
  const UseHelp({super.key});

  @override
  State<UseHelp> createState() => _UseHelpState();
}

class _UseHelpState extends State<UseHelp> {
  QuestionController _controller = Get.put(QuestionController());
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: IconButton(
              onPressed: () {
                setState(() {
                });
              } ,
              icon: SvgPicture.asset('asset/50-50-percent.svg', color: Colors.yellow,),
              iconSize: 30,
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: IconButton(
              onPressed: () {
                setState(() {
                });
              } ,
              icon: SvgPicture.asset('asset/double.svg', color: Colors.yellow,),
              iconSize: 30,
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: IconButton(
              onPressed: () {
                setState(() {
                  _controller.addTime();
                });
              } ,
              icon: SvgPicture.asset('asset/add-time.svg', color: Colors.yellow,),
              iconSize: 30,
            ),
          ),
        ),
      ],
    );
  }
}