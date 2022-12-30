import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../model/Icons.dart';
import '/main.dart';
//bảng xếp hạng

class BangXepHang extends StatefulWidget {
  BangXepHang({super.key});
  @override
  State<BangXepHang> createState() => _BXHState();
}

class _BXHState extends State<BangXepHang> with TickerProviderStateMixin {
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
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this)
      ..addListener(() {
        if (_tabController.indexIsChanging) {
          setState(() {});
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            onPressed: () {
              Get.to(() => MyApp());
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
              tabs: myTabs),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('Images/h1.jpg'),
                      fit: BoxFit.cover)),
            ),
            Center(
              child: Column(
                children: [
                  Image(
                    image: AssetImage('Images/Logo1.png'),
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.width / 3,
                  ),
                ],
              ),
            ),
            TabBarView(
              controller: _tabController,
              children: <Widget>[
                Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height / 2,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black)),
                      child: Stack(
                        children: [
                          const Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              'Danh sách người chơi có điểm cao nhat',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          ListView(
                            children: [
                              Card(
                                  child: ListTile(
                                leading: CircleAvatar(
                                  child: SvgPicture.asset(
                                      'asset/1st-place-medal-svgrepo-com.svg'),
                                ),
                                title: Text('Nguoi choi 1'),
                                subtitle: Text('So diem: 5000'),
                              )),
                              Card(
                                child: ListTile(
                                  leading: CircleAvatar(
                                    child: SvgPicture.asset(
                                        'asset/2nd-place-medal-svgrepo-com.svg'),
                                  ),
                                  title: Text('Nguoi choi 2'),
                                  subtitle: Text('So diem: 4500'),
                                ),
                              ),
                              Card(
                                child: ListTile(
                                  leading: CircleAvatar(
                                    child: SvgPicture.asset(
                                        'asset/3rd-place-medal-svgrepo-com.svg'),
                                  ),
                                  title: Text('Nguoi choi 3'),
                                  subtitle: Text('So diem: 4000'),
                                ),
                              )
                            ],
                          ),
                        ],
                      )),
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black)),
                    child: Stack(
                      children: [
                        const Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            'Danh sách người chơi có Level cao nhat',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        ListView(
                          children: [
                            Card(
                                child: ListTile(
                              leading: CircleAvatar(
                                child: SvgPicture.asset(
                                    'asset/1st-place-medal-svgrepo-com.svg'),
                              ),
                              title: Text('Nguoi choi 1'),
                              subtitle: Text('Level: 10'),
                            )),
                            Card(
                              child: ListTile(
                                leading: CircleAvatar(
                                  child: SvgPicture.asset(
                                      'asset/2nd-place-medal-svgrepo-com.svg'),
                                ),
                                title: Text('Nguoi choi 2'),
                                subtitle: Text('Level: 9'),
                              ),
                            ),
                            Card(
                              child: ListTile(
                                leading: CircleAvatar(
                                  child: SvgPicture.asset(
                                      'asset/3rd-place-medal-svgrepo-com.svg'),
                                ),
                                title: Text('Nguoi choi 3'),
                                subtitle: Text('Level: 8'),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
