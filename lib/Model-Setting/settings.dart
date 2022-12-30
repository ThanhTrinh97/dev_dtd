import 'package:flutter/material.dart';
import 'navbarmenu.dart';
import 'report.dart';
import 'dart:typed_data';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _Settings();
}

class _Settings extends State<Settings> {
  // This widget is the root of your application.\
  AudioPlayer player = AudioPlayer();

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
                                    color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: MediaQuery.of(context).size.height / 9,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('Images/button.png'),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () async {
                        String audioasset = 'Images/nhac.mp3';
                        ByteData bytes = await rootBundle
                            .load(audioasset); //load sound from assets
                        Uint8List soundbytes = bytes.buffer.asUint8List(
                            bytes.offsetInBytes, bytes.lengthInBytes);
                        int result = await player.playBytes(soundbytes);
                        if (result == 1) {
                          //play success
                          print("Sound playing successful.");
                        } else {
                          print("Error while playing sound.");
                        }
                      },
                      child: Text(
                        'PLAY MUSIC',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: MediaQuery.of(context).size.height / 9,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('Images/button.png'),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () async {
                        int result = await player.stop();

                        // You can pasue the player
                        // int result = await player.pause();

                        if (result == 1) {
                          //stop success
                          print("Sound playing stopped successfully.");
                        } else {
                          print("Error on while stopping sound.");
                        }
                      },
                      child: Text(
                        'STOP MUSIC',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: MediaQuery.of(context).size.height / 9,
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
                                builder: (context) => const Report()));
                      },
                      child: Text(
                        'BÁO CÁO VẤN ĐỀ',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
