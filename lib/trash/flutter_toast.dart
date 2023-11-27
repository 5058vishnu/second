import 'package:flutter/material.dart';

class FlutterToast extends StatefulWidget {
  const FlutterToast({super.key});

  @override
  State<FlutterToast> createState() => _FlutterToastState();
}

class _FlutterToastState extends State<FlutterToast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Image(image: AssetImage('assets/images/pic10.png')));
  }
}
