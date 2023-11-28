import 'package:flutter/material.dart';
import 'package:project1/screens/home_page.dart';
import 'package:project1/screens/login_page.dart';
import 'package:project1/screens/profile_page.dart';
import 'package:project1/screens/registration.dart';
import 'package:project1/screens/splash_screen.dart';
import 'package:project1/trash/flutter_toast.dart';
import 'package:project1/trash/loginmainpage.dart';
main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(home: Login12(),);
  }
}
