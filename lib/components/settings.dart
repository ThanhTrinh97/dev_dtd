import 'package:flutter/material.dart';
import 'navbarmenu.dart';
import 'report.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _Settings();
}

class _Settings extends State<Settings> {
  // This widget is the root of your application.\
  double _Music = 0;
  double _Volume = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Images/back.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'THIẾT LẬP',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NavbarMenu()));
                          },
                          icon: Icon(
                            Icons.clear,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: [
                              Icon(Icons.music_note),
                              SizedBox(
                                width: 250,
                                child: Slider(
                                  value: _Music,
                                  thumbColor: Colors.yellow,
                                  activeColor: Colors.red,
                                  inactiveColor: Colors.blue,
                                  max: 100,
                                  label: _Music.round().toString(),
                                  onChanged: (double value) {
                                    setState(() {
                                      _Music = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: [
                              Icon(Icons.volume_up),
                              SizedBox(
                                width: 250,
                                child: Slider(
                                  value: _Volume,
                                  thumbColor: Colors.yellow,
                                  activeColor: Colors.red,
                                  inactiveColor: Colors.blue,
                                  max: 100,
                                  label: _Volume.round().toString(),
                                  onChanged: (double value) {
                                    setState(() {
                                      _Volume = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Report()));
                              },
                              child: Text('Báo cáo vấn đề'),
                            )
                          ],
                        )
                      ],
                    ),
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
