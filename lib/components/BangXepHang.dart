import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/Icons.dart';
import 'package:dev_dtd/main.dart';

class BangXepHang extends StatefulWidget{
  BangXepHang({super.key});
  @override
  
  State<BangXepHang> createState() => _BXHState();
}
class _BXHState extends State<BangXepHang> with TickerProviderStateMixin{
  late TabController _tabController;
  static const List<Tab> myTabs = <Tab>[
    Tab(
      icon: Icon(MyIcons.ranking_svgrepo_com),
    ),
    Tab(
      icon: Icon(MyIcons.bars_level_svgrepo_com),
    ),
    
  ];
  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 2, vsync: this)..addListener(() {
      if(_tabController.indexIsChanging){
        setState(() {
        });
      }
    });
  }
  @override
  Widget build (BuildContext context){
    var appBar2 = AppBar(
        toolbarHeight: MediaQuery.of(context).size.width/3+10,
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        // ignore: avoid_unnecessary_containers
        title: Center(
          child: Container(child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.start,children: [
                IconButton(onPressed: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => MyHomePage(title: 'HomePage',),
                      )
                    );
                  }), icon: Icon(Icons.home, size: 50, color: Colors.black,)),
              ],),
              Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                Image.asset(
                  'images/logo1.png',
                  width: MediaQuery.of(context).size.width/3,
                  height: MediaQuery.of(context).size.width/3,
                  fit: BoxFit.cover,
                )
              ],),
          ],)),
        ),
      );
    return 
    Scaffold(
      appBar: appBar2,
      bottomNavigationBar: Container(
        color: Colors.blueAccent,
        child: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white70,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Colors.blue,
          indicatorPadding: EdgeInsets.all(5),
          controller: _tabController,
          tabs: myTabs
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
            Center(
            child: Container(
              width: MediaQuery.of(context).size.width/2,
              height: MediaQuery.of(context).size.height/2,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black)
              ),
              child: Column(children: [
                Text('Danh sách người chơi có điểm cao nhất', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),),
              ]),
            ),
            ),            
            Center(
            child: Container(
              width: MediaQuery.of(context).size.width/2,
              height: MediaQuery.of(context).size.height/2,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black)
              ),
              child: Column(children: [
                Text('Danh sách người chơi có Level cao nhat', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}