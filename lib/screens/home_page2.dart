import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
        centerTitle: true,
        title: Text("Vehicle Details",
            style: TextStyle(fontWeight: FontWeight.bold),
        ),
    leading: BackButton(onPressed: () {
      
    },style: ButtonStyle()),  ),
     // body: ListView.builder(itemBuilder: itemBuilder),
      // body: Container(
      //   color: Color.fromARGB(219, 219, 219, 219),
      // decoration: 
      //   ,
      // ),
      // bottomNavigationBar: CurvedNavigationBar(items: [
      //   Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Icon(Icons.call),
      //   ),
      //   Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Icon(Icons.currency_bitcoin),
      //   ),
      //   Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Icon(Icons.person_outline),
      //   ),
      //   Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Icon(Icons.favorite_border),
      //   )
      // ]),
    );
  }
}
