
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Model_Update_TTuser/user_tt.dart';

bool light = true;
bool valuesecond = false;
bool isChecked = false;

class Thong_Tin_User extends StatefulWidget {
  const Thong_Tin_User({super.key});
  @override
  State<Thong_Tin_User> createState() => _Thong_Tin_User();
}

final _nameController = TextEditingController();
final _phoneController = TextEditingController();
final _ageController = TextEditingController();
var uid;
var Userid = FirebaseAuth.instance.currentUser!.uid;
Future createUser(User user) async {
  final docUser = FirebaseFirestore.instance.collection('user').doc(Userid);
  user.id = Userid;
  final json = user.toJson();
  await docUser.set(json);
}

Stream<List<Users>> readUsers() =>
    FirebaseFirestore.instance.collection('user').snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => Users.fromJson(doc.data())).toList());

bool validate = false;
dynamic validateTT(String value) {
  if (validate == false) {
    return null;
  } else if (value.isEmpty) {
    return "Không Được Bỏ Trống Thông Tin";
  }
}

class _Thong_Tin_User extends State<Thong_Tin_User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('Images/h1.jpg'), fit: BoxFit.fill)),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AVATAR',
                        style: TextStyle(
                            color: Color.fromARGB(255, 232, 2, 2),
                            fontWeight: FontWeight.bold,
                            fontSize: 27),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Email :${FirebaseAuth.instance.currentUser!.email}",
                          style: TextStyle(
                              color: Color.fromARGB(255, 17, 232, 2),
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextField(
                      controller: _nameController,
                      style: TextStyle(color: Colors.blue),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                          ),
                          border: OutlineInputBorder(),
                          labelText: "HỌ VÀ TÊN",
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                          errorText: validateTT(_nameController.text),
                          prefixIcon: Icon(
                            Icons.add_outlined,
                            color: Colors.white,
                          ),
                          labelStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextField(
                      controller: _phoneController,
                      style: TextStyle(color: Colors.blue),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                          ),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                          labelText: 'SỐ ĐIỆN THOẠI',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                          errorText: validateTT(_phoneController.text),
                          labelStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextField(
                      controller: _ageController,
                      style: TextStyle(color: Colors.blue),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                          ),
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.date_range,
                            color: Colors.white,
                          ),
                          labelText: 'TUỔI',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                          errorText: validateTT(_ageController.text),
                          labelStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 9),
                              width: MediaQuery.of(context).size.width / 1.25,
                              height: MediaQuery.of(context).size.height / 9,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('Images/button.png'),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () async {
                                  setState(() {
                                    validate = true;
                                  });
                                  final user = User(
                                      name: _nameController.text,
                                      age: int.parse(_ageController.text),
                                      phone: _phoneController.text);
                                  createUser(user);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Update_User()));
                                },
                                child: Text(
                                  'CẬP NHẬT THÔNG TIN',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
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
