import 'dart:math';

import '/quen_mat_khau.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dang_nhap.dart';

class Dang_Ky extends StatefulWidget {
  const Dang_Ky({super.key});
  @override
  State<Dang_Ky> createState() => _Dang_Ky();
}

class _Dang_Ky extends State<Dang_Ky> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPass = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final _auth = FirebaseAuth.instance;
  Icon iconshow = const Icon(Icons.visibility_off);

  bool validate = false;
  bool ishiden = true;
  dynamic validatePassword(String value) {
    if (validate == false) {
      return null;
    } else if (value.isEmpty) {
      return "Mật Khẩu Không Được Bỏ Trống";
    } else if (value.length < 6) {
      return "Mật Khẩu Không Được Nhỏ Hơn 6 Ký Tự";
    }
  }

  dynamic validateEmail(String value) {
    if (validate == false) {
      return null;
    } else if (value.isEmpty) {
      return "Tài Khoản Không được bỏ trống ";
    } else if (value.isEmpty ||
        !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return "Bạn Hãy Nhập Email Với định dạng abc@gmail.com";
    }
  }

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
                    image: AssetImage('Images/h1.jpg'), fit: BoxFit.cover),
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
                          image: const AssetImage('Images/h2.png'),
                          width: MediaQuery.of(context).size.width / 2.5,
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'ĐĂNG KÝ',
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
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                          ),
                          border: OutlineInputBorder(),
                          labelText: 'TÀI KHOẢN',
                          errorText: validateEmail(txtEmail.text),
                          prefixIcon: Icon(Icons.supervised_user_circle,
                              color: Colors.white),
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextField(
                        controller: txtPass,
                        obscureText: ishiden,
                        style: const TextStyle(color: Colors.white),
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
                                    iconshow = const Icon(Icons.visibility_off);
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
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextField(
                        controller: passwordConfirmationController,
                        obscureText: ishiden,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black),
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'NHẬP LẠI MẬT KHẨU',
                            errorText: validatePassword(
                                passwordConfirmationController.text),
                            prefixIcon: Icon(Icons.lock, color: Colors.white),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  ishiden = !ishiden;
                                });
                                if (ishiden) {
                                  setState(() {
                                    iconshow = const Icon(Icons.visibility_off);
                                  });
                                } else {
                                  setState(() {
                                    iconshow = const Icon(Icons.visibility);
                                  });
                                }
                              },
                              child: iconshow,
                            ),
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 9),
                      width: MediaQuery.of(context).size.width / 2.0,
                      height: MediaQuery.of(context).size.height / 10,
                      decoration: const BoxDecoration(
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
                          if (txtPass.text.length <= 6) {}

                          if (passwordConfirmationController.text.length <=
                              6) {}
                          // Kiem tra password co trung nhau khong
                          if (txtPass.text !=
                              passwordConfirmationController.text) {
                            const snackBar = SnackBar(
                                content: Text('Password Không Trùng Khớp'));
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          } else {
                            try {
                              final newUser =
                                  await _auth.createUserWithEmailAndPassword(
                                      email: txtEmail.text,
                                      password: txtPass.text);
                              if (newUser != null) {
                                const snackBar = SnackBar(
                                    content: Text('Đăng Ký Thành Công!'));
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                                Navigator.pop(context, 'Đăng Ký Thành Công!');
                              } else {
                                const snackBar = SnackBar(
                                    content: Text('Tài khoản không hợp lệ'));
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              }
                            } catch (e) {
                              if (txtEmail.text.isEmpty == true &&
                                  txtPass.text.isEmpty == true) {
                                const snackBar = SnackBar(
                                    content: Text(
                                        'Bạn Không Nhập Tài Khoản và Mật Khẩu'));
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              } else {
                                const snackBar = SnackBar(
                                    content: Text('Tài khoản không hợp lệ'));
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              }
                            }
                          }
                        },
                        child: Text(
                          'ĐĂNG KÝ',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text('Bạn đã có tài khoản?',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    Column(
                      children: [
                        TextButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.blue),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Quen_MK()));
                          },
                          child: Text('Quên Mật Khẩu',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
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
                            image: AssetImage('Images/dk.gif'),
                            width: MediaQuery.of(context).size.width / 1.75,
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
