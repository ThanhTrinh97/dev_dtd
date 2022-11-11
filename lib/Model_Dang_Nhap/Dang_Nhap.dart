import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

bool light = true;
bool valuesecond = false;
bool isChecked = false;

class Dang_Nhap extends StatefulWidget {
  const Dang_Nhap({super.key});
  @override
  State<Dang_Nhap> createState() => _Dang_Nhap();
}

class _Dang_Nhap extends State<Dang_Nhap> {
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
                    image: AssetImage('Images/h2.jpg'), fit: BoxFit.fill),
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
                              labelText: 'TÀI KHOẢN',
                              prefixIcon: Icon(
                                Icons.supervised_user_circle,
                                color: Colors.white,
                              ),
                              labelStyle: TextStyle(
                                  color: Colors.yellow,
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
                              labelText: 'MẬT KHẨU',
                              prefixIcon: Icon(Icons.lock, color: Colors.white),
                              suffixIcon: Icon(Icons.remove_red_eye),
                              labelStyle: TextStyle(
                                color: Colors.yellow,
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
                                    onPressed: () {},
                                    child: Text(
                                      'Quên Mật Khẩu',
                                      style: TextStyle(
                                          color: Colors.white,
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
                                          color: Colors.red,
                                        )))
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(10),
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
                                        padding:
                                            EdgeInsets.fromLTRB(10, 10, 10, 10),
                                        child: Text(
                                          'ĐĂNG NHẬP',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(10),
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
                                        padding:
                                            EdgeInsets.fromLTRB(10, 10, 10, 10),
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
                              )),
                            ],
                          ),
                        ],
                      ),
                      Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(5, 50, 10, 1),
                              width: MediaQuery.of(context).size.width,
                              height: (MediaQuery.of(context).size.width) / 4.0,
                              child: OutlinedButton.icon(
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  side: BorderSide(color: Colors.black),
                                ),
                                icon: Icon(
                                  Icons.email_outlined,
                                  size: 32,
                                  color: Colors.red,
                                ),
                                label: Text(
                                  'ĐĂNG NHẬP BẰNG GMAIL',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(5, 10, 10, 20),
                              width: MediaQuery.of(context).size.width,
                              height: (MediaQuery.of(context).size.width) / 5.0,
                              child: OutlinedButton.icon(
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  side: BorderSide(color: Colors.black),
                                ),
                                icon: Icon(Icons.facebook,
                                    color: Colors.blue, size: 32),
                                label: Text(
                                  'ĐĂNG NHẬP BẰNG FACEBOOK',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                      ]),
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
