import 'dart:ui';

import 'package:flutter/material.dart';
import 'credit.dart';
import 'history.dart';
import 'report.dart';
import 'settings.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _Menu();
}

class _Menu extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/back.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 5),
                              child: CircleAvatar(
                                radius: 30.0,
                                child: ClipRRect(
                                  child: Image(
                                    image: AssetImage('images/ava.jpg'),
                                  ),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Column(
                                children: [
                                  Text(
                                    'ThanhDuong',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.diamond_outlined,
                            color: Colors.blue,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1.0,
                                style: BorderStyle.solid,
                                color: Colors.grey,
                              ),
                            ),
                            child: Text(
                              '230',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(2, 0, 5, 0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1.0,
                                  style: BorderStyle.solid,
                                  color: Colors.grey),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: SizedBox(
                              width: 25,
                              height: 25,
                              child: Image(
                                image: AssetImage("images/c1.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1.0,
                                style: BorderStyle.solid,
                                color: Colors.grey,
                              ),
                            ),
                            child: Text('230',
                                style: TextStyle(color: Colors.white)),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(2, 0, 5, 0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1.0,
                                  style: BorderStyle.solid,
                                  color: Colors.grey),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 60),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 4),
                                blurRadius: 5.0)
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.0, 1.0],
                            colors: [
                              Color.fromARGB(255, 110, 2, 90),
                              Colors.red,
                            ],
                          ),
                          color: Colors.deepPurple.shade300,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            // elevation: MaterialStateProperty.all(3),
                            shadowColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                            ),
                            child: Text(
                              'ĐỐI KHÁNG NGẪU NHIÊN',
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 4),
                                blurRadius: 5.0)
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.0, 1.0],
                            colors: [
                              Color.fromARGB(255, 110, 2, 90),
                              Colors.red,
                            ],
                          ),
                          color: Colors.deepPurple.shade300,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            // elevation: MaterialStateProperty.all(3),
                            shadowColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                              left: 13,
                              right: 13,
                            ),
                            child: Text(
                              'THỬ THÁCH CÁ NHÂN',
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 4),
                                blurRadius: 5.0)
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.0, 1.0],
                            colors: [
                              Color.fromARGB(255, 110, 2, 90),
                              Colors.red,
                            ],
                          ),
                          color: Colors.deepPurple.shade300,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            // elevation: MaterialStateProperty.all(3),
                            shadowColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                              left: 35,
                              right: 35,
                            ),
                            child: Text(
                              'BẢNG XẾP HẠNG',
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 4),
                                blurRadius: 5.0)
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.0, 1.0],
                            colors: [
                              Color.fromARGB(255, 110, 2, 90),
                              Colors.red,
                            ],
                          ),
                          color: Colors.deepPurple.shade300,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            // elevation: MaterialStateProperty.all(3),
                            shadowColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const History()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                              right: 70,
                              left: 70,
                            ),
                            child: Text(
                              'LỊCH SỬ',
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 4),
                                blurRadius: 5.0)
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.0, 1.0],
                            colors: [
                              Color.fromARGB(255, 110, 2, 90),
                              Colors.red,
                            ],
                          ),
                          color: Colors.deepPurple.shade300,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            // elevation: MaterialStateProperty.all(3),
                            shadowColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ShopCredit()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                              right: 70,
                              left: 70,
                            ),
                            child: Text(
                              'NẠP XU',
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 4),
                                blurRadius: 5.0)
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.0, 1.0],
                            colors: [
                              Color.fromARGB(255, 110, 2, 90),
                              Colors.red,
                            ],
                          ),
                          color: Colors.deepPurple.shade300,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            // elevation: MaterialStateProperty.all(3),
                            shadowColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Settings()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                              right: 70,
                              left: 70,
                            ),
                            child: Text(
                              'CÀI ĐẶT',
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 4),
                                blurRadius: 5.0)
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.0, 1.0],
                            colors: [
                              Color.fromARGB(255, 110, 2, 90),
                              Colors.red,
                            ],
                          ),
                          color: Colors.deepPurple.shade300,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            // elevation: MaterialStateProperty.all(3),
                            shadowColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                              right: 55,
                              left: 55,
                            ),
                            child: Text(
                              'ĐĂNG XUẤT',
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
