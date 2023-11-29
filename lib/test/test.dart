import 'package:flutter/material.dart';
import 'package:project1/test/test2.dart';

class TestPage1 extends StatefulWidget {
  const TestPage1({super.key});

  @override
  State<TestPage1> createState() => _TestPage1State();
}

class _TestPage1State extends State<TestPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Flipkart"),
        centerTitle: true,
      ),
      body: TestPage2(),
    );
  }
}
