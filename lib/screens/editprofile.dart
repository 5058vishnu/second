import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final ProfilePagekey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black
          ,centerTitle: true,
          title: Text("Edit Profile", style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold),)),
      body: SingleChildScrollView(
        child: Form(
          key: ProfilePagekey,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Column(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('assets/images/pic4.jpg'),
                      ),
                      Positioned(
                          left: 100,
                          top: 95,
                          child: IconButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.white)),
                              onPressed: () {},
                              icon: Icon(
                                Icons.camera_alt,
                                color: Colors.black45,
                              )))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80,bottom: 8,left: 8,right: 8),
                    child: TextFormField(
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp('^[a-zA-Z][a-zA-Z ]*'))
                      ],
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your name';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white70,
                          hintText: "Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(19))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your email';
                        }
                        if (!RegExp(
                                r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                            .hasMatch(value)) {
                          return "Enter a valid email address";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        filled: true,
                          fillColor: Colors.white70,
                          hintText: "Email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(19))),
                    ),
                  ), Padding(
                    padding: const EdgeInsets.only(top: 8,bottom: 8,left: 8,right: 8),
                    child: TextFormField(
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp('^[a-zA-Z][a-zA-Z ]*'))
                      ],
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your name';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white70,
                          hintText: "Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(19))),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
            style:
                ButtonStyle(fixedSize: MaterialStatePropertyAll(Size(50, 50))),
            onPressed: () {},
            child: Text("Save")),
      ),
    );
  }
}
