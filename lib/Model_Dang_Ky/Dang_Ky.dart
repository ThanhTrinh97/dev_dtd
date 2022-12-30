import 'dart:ui';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dang_nhap.dart';

bool light = true;
bool valuesecond = false;
bool isChecked = false;

class Quen_MK extends StatefulWidget {
  @override
  State<Quen_MK> createState() => _Quen_MK();
}

class _Quen_MK extends State<Quen_MK> {
  final formkey = GlobalKey<FormState>();
  final txtEmail = TextEditingController();

  @override
  void dispose() {
    txtEmail.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: txtEmail.text.trim());
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(
                  'Link Password đã được gửi trong hộp thư! Vui long kiểm tra!!'),
            );
          });
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(e.message.toString()),
            );
          });
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
                    image: AssetImage('Images/h1.jpg'), fit: BoxFit.fill),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton.icon(
                        style: TextButton.styleFrom(
                          primary: Colors.blueAccent, // text + icon color
                        ),
                        icon: Icon(
                          Icons.turn_left_outlined,
                          size: 32,
                          color: Colors.white,
                        ),
                        label: Text('QUÊN MẬT KHẨU',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.red,
                                fontWeight: FontWeight.bold)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Dang_Nhap()));
                        },
                      ),
                    ],
                  ),
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
                    padding: const EdgeInsets.fromLTRB(2, 100, 2, 0),
                    child: Text(
                      'HÃY ĐIỀN EMAIL CỦA BẠN CHÚNG TÔI SẼ GỬI LINK PASSWORD RESET',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.red),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(2, 20, 2, 0),
                    child: TextFormField(
                      style: TextStyle(color: Colors.blue),
                      controller: txtEmail,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                          ),
                          border: OutlineInputBorder(),
                          labelText: 'TÀI KHOẢN',
                          prefixIcon: Icon(
                            Icons.supervised_user_circle,
                            color: Colors.white,
                          ),
                          labelStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (email) =>
                          email != null && !EmailValidator.validate(email)
                              ? 'EMAIL KHÔNG ĐƯỢC BỎ TRỐNG'
                              : null,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 9),
                              width: MediaQuery.of(context).size.width / 1.5,
                              height: MediaQuery.of(context).size.height / 9,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('Images/button.png'),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {});
                                  passwordReset();
                                },
                                child: Text(
                                  'ĐỔI MẬT KHẨU',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
