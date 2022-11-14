import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

bool light = true;
bool valuesecond = false;
bool isChecked = false;

class Quen_MK extends StatefulWidget {
  const Quen_MK({super.key});
  @override
  State<Quen_MK> createState() => _Quen_MK();
}

class _Quen_MK extends State<Quen_MK> {
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
                      image: AssetImage('Images/h1.jpg'), fit: BoxFit.fill)),
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
                            style: TextStyle(fontSize: 20)),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(2, 80, 2, 0),
                    child: TextField(
                      style: TextStyle(color: Colors.blue),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                          ),
                          border: OutlineInputBorder(),
                          labelText: 'MẬT KHẨU CẤP 2',
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          suffixIcon: Icon(Icons.remove_red_eye),
                          labelStyle: TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(2, 12, 2, 0),
                    child: TextField(
                      style: TextStyle(color: Colors.blue),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                          ),
                          border: OutlineInputBorder(),
                          labelText: 'MẬT KHẨU MỚI',
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          suffixIcon: Icon(Icons.remove_red_eye),
                          labelStyle: TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(2, 12, 2, 0),
                    child: TextField(
                      style: TextStyle(color: Colors.blue),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                          ),
                          border: OutlineInputBorder(),
                          labelText: 'NHẬP LẠI MẬT KHẨU MỚI',
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                          ),
                          labelStyle: TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
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
                                padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                                child: Text(
                                  'ĐỔI MẬT KHẨU',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
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
