import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Model_Dang_Ky/Dang_Ky.dart';
import '../Model_Quen_MK/Quen_mk.dart';

class Dang_Nhap extends StatefulWidget {
  const Dang_Nhap({super.key});
  @override
  State<Dang_Nhap> createState() => _Dang_Nhap();
}

class _Dang_Nhap extends State<Dang_Nhap> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPass = TextEditingController();
  bool ishiden = true;
  bool validate = false;
  bool isChecked = false;
  dynamic validatePassword(String value) {
    if (validate == false) {
      return null;
    } else if (value.isEmpty) {
      return "Mật Khẩu không Được Bỏ Trống";
    }
  }

  dynamic validateEmail(String value) {
    if (validate == false) {
      return null;
    } else if (value.isEmpty) {
      return "Tài Khoản không Được Bỏ Trống";
    }
  }

  final _auth = FirebaseAuth.instance;
  Icon iconshow = const Icon(Icons.visibility_off);
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
                    image: AssetImage('Images/h1.jpg'), fit: BoxFit.fill),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('Images/h2.png'),
                            width: MediaQuery.of(context).size.width / 2.5,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'ĐĂNG NHẬP',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TextField(
                          controller: txtEmail,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black),
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'TÀI KHOẢN',
                              errorText: validateEmail(txtEmail.text),
                              prefixIcon: Icon(
                                Icons.supervised_user_circle,
                                color: Colors.white,
                              ),
                              labelStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TextField(
                          controller: txtPass,
                          obscureText: ishiden,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black),
                              ),
                              border: OutlineInputBorder(),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    ishiden = !ishiden;
                                  });
                                  if (ishiden) {
                                    setState(() {
                                      iconshow =
                                          const Icon(Icons.visibility_off);
                                    });
                                  } else {
                                    setState(() {
                                      iconshow = const Icon(Icons.visibility);
                                    });
                                  }
                                },
                                child: iconshow,
                              ),
                              labelText: 'MẬT KHẨU',
                              errorText: validatePassword(txtPass.text),
                              prefixIcon: Icon(Icons.lock, color: Colors.white),
                              labelStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  TextButton(
                                    style: ButtonStyle(
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.blue),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Quen_MK()));
                                    },
                                    child: Text(
                                      'Quên Mật Khẩu',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              )),
                          Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Checkbox(
                                  value: isChecked,
                                  checkColor: Colors.white,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  },
                                ),
                                TextButton(
                                    onPressed: () {
                                      setState(() {
                                        isChecked = !isChecked;
                                      });
                                    },
                                    child: Text('Nhớ Đăng Nhập',
                                        style: TextStyle(
                                          color: Colors.white,
                                        )))
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 40),
                            width: MediaQuery.of(context).size.width / 2.0,
                            height: MediaQuery.of(context).size.height / 10,
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
                                // Kiem tra mat khau co tu 6 ky tu tro len
                                try {
                                  final _user =
                                      await _auth.signInWithEmailAndPassword(
                                          email: txtEmail.text,
                                          password: txtPass.text);
                                  _auth.authStateChanges().listen((event) {
                                    if (event != null) {
                                      txtEmail.clear();
                                      txtPass.clear();
                                      Navigator.pushNamedAndRemoveUntil(
                                        context,
                                        'home',
                                        (route) => false,
                                      );
                                    }
                                  });
                                } on FirebaseAuthException catch (e) {
                                  final snackBar = SnackBar(
                                      content: Text(
                                          'Email Hoặc Mật Khẩu Không Đúng'));
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                } catch (e) {
                                  final snackBar = SnackBar(
                                      content: Text('Lỗi Kết Nối Đến Server!'));
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                }
                              },
                              child: Text(
                                'ĐĂNG NHẬP',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 40),
                            width: MediaQuery.of(context).size.width / 2.0,
                            height: MediaQuery.of(context).size.height / 10,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('Images/button.png'),
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Dang_Ky()));
                              },
                              child: Text(
                                'ĐĂNG KÝ',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('Images/dn3.gif'),
                                  width:
                                      MediaQuery.of(context).size.width / 1.0,
                                  height:
                                      MediaQuery.of(context).size.height / 3.0,
                                )
                              ],
                            ),
                          )
                        ],
                      )
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
