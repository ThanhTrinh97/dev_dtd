import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'credit.dart';
// import 'history.dart';
// import 'report.dart';
// import 'settings.dart';
// import 'solar_system.dart';
// import 'package:sizer/sizer.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});
  @override
  State<Menu> createState() => _Menu();
}

class _Menu extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('Images/stars_bg.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SafeArea(
              child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 4.5,
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
                                            image: AssetImage('Images/ava.jpg'),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 3),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Email :${FirebaseAuth.instance.currentUser!.email}",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 17, 232, 2),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          Text(
                                            'ThanhDuong',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Column(
                                            children: [
                                              Text('Level: 10',
                                                  style: TextStyle(
                                                      color: Colors.white)),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(top: 5),
                                                width: 80,
                                                height: 5,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            Color(0xFF3F4768),
                                                        width: 1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                                child: Stack(
                                                  children: [
                                                    LayoutBuilder(
                                                      builder: (context,
                                                              constraints) =>
                                                          Container(
                                                        width: constraints
                                                                .maxWidth *
                                                            0.5,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            begin: Alignment
                                                                .centerLeft,
                                                            end: Alignment
                                                                .centerRight,
                                                            colors: [
                                                              Colors.blue,
                                                              Colors.blueAccent,
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ), //Nhan vat
                              //Tien choi

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
                                        image: AssetImage("Images/c1.png"),
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
                        ],
                      ),
                    ),
                    //Phan menu

                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MaterialButton(
                            padding: EdgeInsets.all(8.0),
                            textColor: Colors.white,
                            splashColor: Colors.greenAccent,
                            elevation: 8.0,
                            child: Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width / 1.5,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('Images/button2.png'),
                                    fit: BoxFit.cover),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(35, 15, 35, 15),
                                child: Text(
                                  "THỬ THÁCH CÁ NHÂN",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            // ),
                            onPressed: () {
                              setState(
                                () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => SolarSystem()));
                                },
                              );
                            },
                          ),
                          MaterialButton(
                            padding: EdgeInsets.all(8.0),
                            textColor: Colors.white,
                            splashColor: Colors.greenAccent,
                            elevation: 8.0,
                            child: Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width / 1.5,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('Images/button2.png'),
                                    fit: BoxFit.cover),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(35, 15, 35, 15),
                                child: Text(
                                  "BẢNG XẾP HẠNG",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            // ),
                            onPressed: () {},
                          ),
                          MaterialButton(
                            padding: EdgeInsets.all(8.0),
                            textColor: Colors.white,
                            splashColor: Colors.greenAccent,
                            elevation: 8.0,
                            child: Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width / 1.5,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('Images/button2.png'),
                                    fit: BoxFit.cover),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(35, 15, 35, 15),
                                child: Text(
                                  "CỬA HÀNG",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            // ),
                            onPressed: () {},
                          ),
                          MaterialButton(
                            padding: EdgeInsets.all(8.0),
                            textColor: Colors.white,
                            splashColor: Colors.greenAccent,
                            elevation: 8.0,
                            child: Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width / 1.5,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('Images/button2.png'),
                                    fit: BoxFit.cover),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(35, 15, 35, 15),
                                child: Text(
                                  "LỊCH SỬ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            // ),
                            onPressed: () {},
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  FirebaseAuth.instance.signOut();
                                  Navigator.pushNamedAndRemoveUntil(
                                      context, 'Welcome', (route) => false);
                                },
                                icon: Icon(Icons.settings, color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
