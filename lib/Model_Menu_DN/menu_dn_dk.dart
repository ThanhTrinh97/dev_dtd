import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'credit.dart';
import 'history.dart';
import 'report.dart';
import 'settings.dart';
import 'solar_system.dart';
import 'package:sizer/sizer.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});
  @override
  State<Menu> createState() => _Menu();
}

Stream<List<Users>> readUsers() =>
    FirebaseFirestore.instance.collection('user').snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => Users.fromJson(doc.data())).toList());
var uid;
var Userid = FirebaseAuth.instance.currentUser!.uid;
Future createUser(User user) async {
  final docUser = FirebaseFirestore.instance.collection('user').doc(Userid);
  user.id = Userid;
  final json = user.toJson();
  await docUser.set(json);
}

@override
class _Menu extends State<Menu> {
  Widget builduser(Users user) {
    if (user.id == Userid) {
      return SafeArea(
          child: Stack(
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Email:${FirebaseAuth.instance.currentUser!.email}",
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 17, 232, 2),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 9),
                                      ),
                                      Text(
                                        "Tên:${user.name}",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Row(
                                        children: [
                                          Text('Level:',
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
                                                    color: Color(0xFF3F4768),
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            child: Stack(
                                              children: [
                                                LayoutBuilder(
                                                  builder:
                                                      (context, constraints) =>
                                                          Container(
                                                    width:
                                                        constraints.maxWidth *
                                                            0.5,
                                                    decoration: BoxDecoration(
                                                      gradient: LinearGradient(
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
                              Container(
                                margin: EdgeInsets.fromLTRB(2, 0, 5, 0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1.0,
                                      style: BorderStyle.solid,
                                      color: Colors.grey),
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
                            padding: const EdgeInsets.fromLTRB(35, 15, 35, 15),
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SolarSystem()));
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
                            padding: const EdgeInsets.fromLTRB(35, 15, 35, 15),
                            child: Text(
                              "ĐỐI KHÁNG NGẪU NHIÊN",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        // ),
                        onPressed: () {
                          setState(
                            () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SolarSystem()));
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
                            padding: const EdgeInsets.fromLTRB(35, 15, 35, 15),
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
                            padding: const EdgeInsets.fromLTRB(35, 15, 35, 15),
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
                            padding: const EdgeInsets.fromLTRB(35, 15, 35, 15),
                            child: Text(
                              "LỊCH SỬ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        // ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => History()));
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ));
    } else
      return Container();
  }

  Future<List<Users>> fethaccount() async {
    var records = await FirebaseFirestore.instance.collection('user').get();
    final _list = records.docs.map((e) {
      Users temp =
          Users(id: e['id'], name: e['name'], age: e["age"], phone: e['phone']);
      return temp;
    }).toList();
    return _list;
  }

  Stream<List<Users>> readprofiles() => FirebaseFirestore.instance
      .collection('user')
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => Users.fromJson(doc.data())).toList());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: StreamBuilder<List<Users>>(
            stream: readprofiles(),
            builder: (context, snapshot) {
              if (snapshot.hasError)
                return Text('Something wrong ${snapshot.error}');
              else if (snapshot.hasData) {
                final users = snapshot.data!;
                return ListView(
                  children: users.map(builduser).toList(),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ));
  }
}

class User {
  String id;
  final String name;
  final int age;
  final String phone;

  User(
      {this.id = '',
      required this.name,
      required this.age,
      required this.phone});
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'age': age,
        'phone': phone,
      };
  static User fromJson(Map<String, dynamic> json) => User(
      id: json['id'],
      name: json['name'],
      age: json['age'],
      phone: json['phone']);
}

class Users {
  Users({
    required this.id,
    required this.age,
    required this.phone,
    required this.name,
  });

  String id;
  int age;
  String phone;
  String name;

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        id: json["id"],
        age: json["age"],
        phone: json["phone"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "age": age,
        "phone": phone,
        "name": name,
      };
}
