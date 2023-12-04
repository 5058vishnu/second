import 'package:flutter/material.dart';

class HomeProfile extends StatefulWidget {
  const HomeProfile({super.key});

  @override
  State<HomeProfile> createState() => _HomeProfileState();
}

class _HomeProfileState extends State<HomeProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [IconButton(onPressed: () {
          
        }, icon: Icon(Icons.mode_edit_outlined))],
      ),
      body: SingleChildScrollView(
        child: Card(color: Colors.white70,elevation: 10,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 200),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage(""),
                    ),
                    Text('data')
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  leading: Icon(
                    Icons.favorite_border,
                  ),
                  title: Text("Favourits",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  leading: Icon(
                    Icons.monetization_on,
                  ),
                  title: Text("Transactions",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  leading: Icon(
                    Icons.person_outline,
                  ),
                  title: Text("Delete Account",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  onTap: () {},
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
