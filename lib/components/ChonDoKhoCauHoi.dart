import 'package:flutter/material.dart';
import 'package:dev_dtd/main.dart';

class ChonDoKho extends StatefulWidget{
  const ChonDoKho({super.key});

  @override
  State<ChonDoKho> createState() => _ChonDoKhoState();
}
class _ChonDoKhoState extends State<ChonDoKho>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        /*decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(''),
            fit: BoxFit.cover
          )
        ),*/
        child: Column(
          children: [
            Container(
              child: Column(children: [
                Row(children: [
                IconButton(
                icon: Icon(Icons.home, size: 50,),
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => MyHomePage(title: 'HomePage',),
                    )
                  );
                },
                )
                ],),
                Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                  Image.asset(
                    'images/logo1.png',
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.width/2,
                    width: MediaQuery.of(context).size.width/2,
                  )
                ],),
              ],),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: Column(children: [
                const Text('Chọn độ khó câu hỏi', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width/2,
                  height: MediaQuery.of(context).size.height/10,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
                    ),
                    child: Text('Easy'),
                    onPressed: () {
                      
                    },
                    ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width/2,
                  height: MediaQuery.of(context).size.height/10,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    child: Text('Normal'),
                    onPressed: () {
                      
                    },
                    ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width/2,
                  height: MediaQuery.of(context).size.height/10,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                    ),
                    child: Text('Hard'),
                    onPressed: () {
                      
                    },
                    ),
                )
              ],),
            )
          ],
        ),
      ),
    );
  }
}