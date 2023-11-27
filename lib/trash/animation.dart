import 'dart:async';
import 'package:flutter/material.dart';

class CarAnimationScreen extends StatefulWidget {
  const CarAnimationScreen({Key? key}) : super(key: key);

  @override
  _CarAnimationScreenState createState() => _CarAnimationScreenState();
}

class _CarAnimationScreenState extends State<CarAnimationScreen> {
  var distance = 0.0;

  @override
  void initState() {
    // TODO: implement initState

    Timer.periodic(Duration(seconds: 6), moveCar);
  }

  void moveCar(Timer t) async {
    setState(() {
      distance = distance == 0 ? 300 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                  margin: EdgeInsets.only(right: distance),
                  child: Image(
                      width: 200,
                      height: 200,
                      image: AssetImage('assets/images/pic14.jpg')))
            ],
          ),
        ));
  }
}
