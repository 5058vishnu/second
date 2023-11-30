import 'package:flutter/material.dart';
import 'package:project1/screens/forgotpassword_page.dart';
import 'package:project1/screens/home_page.dart';
import 'package:project1/screens/home_page2.dart';
import 'package:project1/screens/login_page.dart';
import 'package:project1/screens/profile_page.dart';
import 'package:project1/screens/registration.dart';
import 'package:project1/screens/settings_page.dart';
import 'package:project1/screens/splash_screen.dart';
import 'package:project1/test/test.dart';
import 'package:project1/test/test2.dart';
import 'package:project1/trash/demo_card.dart';
import 'package:project1/trash/demo_home.dart';
import 'package:project1/trash/drawer_page.dart';
import 'package:project1/trash/flutter_toast.dart';
import 'package:project1/trash/loginmainpage.dart';
import 'package:project1/trash/tabbar.dart';
main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Search Bar with Leading Drawer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DemoHome(),);
  }
}
