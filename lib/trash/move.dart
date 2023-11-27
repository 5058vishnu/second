import 'package:flutter/material.dart';

class amoves extends StatefulWidget {
  const amoves({super.key});

  @override
  State<amoves> createState() => _amovesState();
}

class _amovesState extends State<amoves> {
  @override
  Widget build(BuildContext context) {
    late AnimationController moveController;
    late Animation moveAnimation;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/pic14.jpg')))),
      ),
    );
  }
}
