import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

bool light = true;
bool valuesecond = false;
bool isChecked = false;

class Dang_Ky extends StatefulWidget {
  const Dang_Ky({super.key});
  @override
  State<Dang_Ky> createState() => _Dang_Ky();
}

class _Dang_Ky extends State<Dang_Ky> {
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
                          image: AssetImage('Images/h2.png'),
                          width: MediaQuery.of(context).size.width / 2.5,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'ĐĂNG KÝ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 232, 2, 2),
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextField(
                        style: TextStyle(color: Colors.blue),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black),
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'HỌ TÊN',
                            prefixIcon:
                                Icon(Icons.add_outlined, color: Colors.white),
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextField(
                        style: TextStyle(color: Colors.blue),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black),
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'TÀI KHOẢN',
                            prefixIcon: Icon(Icons.supervised_user_circle,
                                color: Colors.white),
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextField(
                        style: TextStyle(color: Colors.blue),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black),
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'SỐ ĐIỆN THOẠI',
                            prefixIcon: Icon(Icons.phone, color: Colors.white),
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextField(
                        style: TextStyle(color: Colors.blue),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black),
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'MẬT KHẨU',
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            suffixIcon: Icon(Icons.remove_red_eye),
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextField(
                        style: TextStyle(color: Colors.blue),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black),
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'NHẬP LẠI MẬT KHẨU',
                            prefixIcon: Icon(Icons.lock, color: Colors.white),
                            suffixIcon: Icon(Icons.remove_red_eye),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                          width: MediaQuery.of(context).size.width,
                          // height: MediaQuery.of(context).size.height,
                          child: Column(
                            children: [
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
                                          Colors.red.withOpacity(0.8)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Padding(
                                  padding: EdgeInsets.fromLTRB(90, 18, 90, 18),
                                  child: Text(
                                    'ĐĂNG KÝ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
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
                          onPressed: () {},
                          child: Text('Quên Mật Khẩu',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
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
