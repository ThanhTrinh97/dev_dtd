import 'package:dev_dtd/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:get/get.dart';
import 'package:matcher/matcher.dart';

import '../main.dart';

class Victory extends StatelessWidget {
  const Victory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.home, size: 30, color: Colors.black,),
            onPressed: () {
              Get.to(()=>MyHomePage(title: 'Trang Chu'));
            },
          ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(children: [
            Spacer(flex: 3),
              Text(
                "CHIẾN THẮNG",
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(color: kSecondaryColor, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Image(
                image: AssetImage('images/vitory.png'),
                width: MediaQuery.of(context).size.width/2,
                height: MediaQuery.of(context).size.width/3,
              ),
              Spacer(flex: 3,)
          ],)
        ],
      ),
    );
  }
}