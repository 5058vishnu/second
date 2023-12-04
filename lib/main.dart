import 'package:flutter/material.dart';
import 'package:project1/screens/editprofile.dart';
import 'package:project1/screens/favorate.dart';
import 'package:project1/screens/forgotpassword_page.dart';
import 'package:project1/screens/help.dart';
import 'package:project1/screens/homeprofile.dart';
import 'package:project1/screens/login_page.dart';
import 'package:project1/screens/profile_page.dart';
import 'package:project1/screens/registration.dart';
import 'package:project1/screens/settings_page.dart';
import 'package:project1/screens/splash_screen.dart';
import 'package:project1/second_choice/homepage.dart';
import 'package:project1/second_choice/homepage_2.dart';


main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home: HelpLine());
  }
}
