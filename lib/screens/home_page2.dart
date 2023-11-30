import 'package:flutter/material.dart';

class HomePage_2 extends StatefulWidget {
  const HomePage_2({super.key});

  @override
  State<HomePage_2> createState() => _HomePage_2State();
}

class _HomePage_2State extends State<HomePage_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border),
          ),
          IconButton(onPressed:() {
            
          }, icon: Icon(Icons.share))
        ],
        centerTitle: true,
        title: Text(
          "Vehicle Details",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: BackButton(
          onPressed: () {},
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
        return Container(
            decoration: BoxDecoration(
            boxShadow: [
            BoxShadow(
            color: Colors.grey,
            blurRadius: 90.0, // has the effect of softening the shadow
            spreadRadius: 1.0,
            ) ])); },),
    );
  }
}
