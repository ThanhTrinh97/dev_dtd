import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class VsWidget extends StatefulWidget {
  const VsWidget({super.key});

  @override
  State<VsWidget> createState() => VsWidgetState();
}

class VsWidgetState extends State<VsWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/vs.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      Container(
                        child: CircleAvatar(
                          radius: 26.0,
                          child: ClipRRect(
                            child: Image(
                              image: AssetImage('images/ava.jpg'),
                            ),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                      ),
                      const Text(
                        'ThanhDuong',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   width: 120,
                // ),
                SizedBox(
                  child: Row(
                    children: [
                      Container(
                        child: CircleAvatar(
                          radius: 26.0,
                          child: ClipRRect(
                            child: Image(
                              image: AssetImage('images/ava.jpg'),
                            ),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                      ),
                      const Text(
                        'ThanhDuong',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
