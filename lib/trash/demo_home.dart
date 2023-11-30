import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class DemoHome extends StatefulWidget {
  const DemoHome({super.key});

  @override
  State<DemoHome> createState() => _DemoHomeState();
}

class _DemoHomeState extends State<DemoHome> {
  List carName = [
    'Jeep W186X LandSUV',
    'LAND ROVER X800',
    'Benz S Class 350CDI',
    'AUDI Q5 40 TDI'
  ];
  List carimage = [
    'assets/images/pic3.jpg',
    'assets/images/pic3.jpg',
    'assets/images/pic3.jpg',
    'assets/images/pic3.jpg'
  ];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppBar(

        scaffoldKey: _scaffoldKey,
        preferredSize: Size.fromHeight(80),
      ),
      body: ListView.builder(
        itemCount: carName.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 90.0, // has the effect of softening the shadow
                  spreadRadius: 1.0, // has the effect of extending the shadow
                  offset: Offset(
                    5.0, // horizontal, move right 10
                    5.0, // vertical, move down 10
                  ),
                ),
              ],
            ),
            child: Card(
              color: Colors.white70,
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 8,
              margin:
                  EdgeInsets.only(right: 40, left: 40, top: 15, bottom: 15),
              shadowColor: Colors.green,
              child: InkWell(onTap: () {

              },
                child: Column(
                  children: [
                    Image.asset(carimage[index]),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(carName[index],
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 20)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.calendar_today_rounded),
                              Text('2014')
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.speed_rounded),
                              Text('59000 KM')
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.info_outline_rounded),
                              Text('Diesel')
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.currency_rupee),
                              Text('71,00,000')
                            ],
                          ),
                          Icon(Icons.favorite_border)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: CurvedNavigationBar(color: Colors.black38,
          backgroundColor: Colors.black38,
          height: 70,
          items: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.call),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.currency_bitcoin),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.person_outline),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.favorite_border),
            )
          ]),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  CustomAppBar(
      {Key? key, required this.preferredSize, required this.scaffoldKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          scaffoldKey.currentState?.openDrawer(); // Open the drawer
        },
        icon: Icon(Icons.menu),
        color: Colors.black,
      ),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      title: TextField(
        decoration: InputDecoration(
            border: InputBorder.none, hintText: "Tell us your dream"),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.line_weight),
          color: Colors.black,
        ),
      ],
    );
  }

  @override
  final Size preferredSize;
}
