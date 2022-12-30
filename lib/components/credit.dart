import 'dart:ui';

import 'package:flutter/material.dart';
import 'navbarmenu.dart';

class ShopCredit extends StatefulWidget {
  const ShopCredit({super.key});

  @override
  State<ShopCredit> createState() => _ShopCredit();
}

class _ShopCredit extends State<ShopCredit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Images/stars_bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const NavbarMenu()));
                              },
                              icon: Icon(
                                Icons.keyboard_double_arrow_left,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Shop Credit",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const NavbarMenu()));
                              },
                              icon: Icon(
                                Icons.diamond_outlined,
                                color: Colors.blue,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 3, 10, 3),
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
                                  image: AssetImage("Images/c1.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 3, 10, 3),
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
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2.0,
                                    style: BorderStyle.solid,
                                    color: Color.fromARGB(255, 162, 147, 9),
                                  ),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: Container(
                                  color: Colors.grey.withOpacity(0.7),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                        width: 130,
                                        height: 130,
                                        child: Image(
                                          image: AssetImage("Images/c1.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(47, 5, 47, 5),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                          width: 2.0,
                                          style: BorderStyle.solid,
                                          color:
                                              Color.fromARGB(255, 162, 147, 9),
                                        )),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.attach_money_rounded),
                                            Text(
                                              '10',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2.0,
                                    style: BorderStyle.solid,
                                    color: Color.fromARGB(255, 162, 147, 9),
                                  ),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: Container(
                                  color: Colors.grey.withOpacity(0.7),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                        width: 130,
                                        height: 130,
                                        child: Image(
                                          image: AssetImage("Images/c1.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(47, 5, 47, 5),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                          width: 2.0,
                                          style: BorderStyle.solid,
                                          color:
                                              Color.fromARGB(255, 162, 147, 9),
                                        )),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.attach_money_rounded),
                                            Text(
                                              '10',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2.0,
                                    style: BorderStyle.solid,
                                    color: Color.fromARGB(255, 162, 147, 9),
                                  ),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: Container(
                                  color: Colors.grey.withOpacity(0.7),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                        width: 130,
                                        height: 130,
                                        child: Image(
                                          image: AssetImage("Images/c1.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(47, 5, 47, 5),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                          width: 2.0,
                                          style: BorderStyle.solid,
                                          color:
                                              Color.fromARGB(255, 162, 147, 9),
                                        )),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.attach_money_rounded),
                                            Text(
                                              '10',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2.0,
                                    style: BorderStyle.solid,
                                    color: Color.fromARGB(255, 162, 147, 9),
                                  ),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: Container(
                                  color: Colors.grey.withOpacity(0.7),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                        width: 130,
                                        height: 130,
                                        child: Image(
                                          image: AssetImage("Images/c1.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(47, 5, 47, 5),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                          width: 2.0,
                                          style: BorderStyle.solid,
                                          color:
                                              Color.fromARGB(255, 162, 147, 9),
                                        )),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.attach_money_rounded),
                                            Text(
                                              '10',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2.0,
                                    style: BorderStyle.solid,
                                    color: Color.fromARGB(255, 162, 147, 9),
                                  ),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: Container(
                                  color: Colors.grey.withOpacity(0.7),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                        width: 130,
                                        height: 130,
                                        child: Image(
                                          image: AssetImage("Images/c1.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(47, 5, 47, 5),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                          width: 2.0,
                                          style: BorderStyle.solid,
                                          color:
                                              Color.fromARGB(255, 162, 147, 9),
                                        )),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.attach_money_rounded),
                                            Text(
                                              '10',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2.0,
                                    style: BorderStyle.solid,
                                    color: Color.fromARGB(255, 162, 147, 9),
                                  ),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: Container(
                                  color: Colors.grey.withOpacity(0.7),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                        width: 130,
                                        height: 130,
                                        child: Image(
                                          image: AssetImage("Images/c1.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(47, 5, 47, 5),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                          width: 2.0,
                                          style: BorderStyle.solid,
                                          color:
                                              Color.fromARGB(255, 162, 147, 9),
                                        )),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.attach_money_rounded),
                                            Text(
                                              '10',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
