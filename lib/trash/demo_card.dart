import 'package:flutter/material.dart';
class Card1 extends StatefulWidget {
  const Card1({super.key});

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {

  List carName=['hhd','bhh','hgj'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:

            ListView.builder(
              itemCount: carName.length,

              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10.0, // has the effect of softening the shadow
                        spreadRadius: 2.0, // has the effect of extending the shadow
                        offset: Offset(
                          5.0, // horizontal, move right 10
                          5.0, // vertical, move down 10
                        ),
                      ),
                    ],
                  ),





                  child:Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child:  Column(
                      children: [
                        Image.asset('assets/images/pic3.jpg'),
                        Text(carName[index]),

                        Text("3.5l"),

                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 8,

                    margin: EdgeInsets.all(10),
                    shadowColor: Colors.green,


                  ),

                );

              },



      ),
    );
  }
}
