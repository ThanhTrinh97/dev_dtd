import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

bool light = true;
bool valuesecond = false;
bool isChecked = false;

class Thong_Tin_User extends StatefulWidget {
  const Thong_Tin_User({super.key});
  @override
  State<Thong_Tin_User> createState() => _Thong_Tin_User();
}

class _Thong_Tin_User extends State<Thong_Tin_User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('Images/h2.jpg'), fit: BoxFit.fill)),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.home,
                            size: 30,
                          )
                        ],
                      ),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('Images/h2.png'),
                            width: MediaQuery.of(context).size.width / 2.5,
                          )
                        ],
                      ))
                    ],
                  ),
            