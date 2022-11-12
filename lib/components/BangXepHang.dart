import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
    return 
    Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            icon: Icon(Icons.home, size: 30,),
            onPressed: () {
              Get.to(()=>MyHomePage(title: 'Trang Chu'));
            },
          ),
          
        // Fluttter show the back button automatically
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
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
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),
          Center(child: Column(children: [
            Image(image: AssetImage('images/logo1.png'), fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width/3,
                        height: MediaQuery.of(context).size.width/3,
                      ),
          ],),),
          TabBarView(
            controller: _tabController,
            children: <Widget>[
                Center(
                child: Container(
                  width: MediaQuery.of(context).size.width/2,
                  height: MediaQuery.of(context).size.height/2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black)
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black))
                    ),
                    child: Column(children: [
                      Text('Danh sách người chơi có điểm cao nhất', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),),
                    ]),
                  ),
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
        ],
      )
    );
  }
}

