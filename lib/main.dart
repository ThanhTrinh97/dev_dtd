import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/navbarmenu.dart';
import 'dang_nhap.dart';
import 'home.dart';
import 'menu12.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute:
            FirebaseAuth.instance.currentUser == null ? 'Welcome' : 'home',
        routes: {
          'Welcome': (context) => HomeScreen(),
          'home': (context) => NavbarMenu(),
        });
  }
}
