import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_rental/screens/profile/profile_screen.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.blueAccent),
        toolbarHeight: 80.0,
        title: Container(
          margin: const EdgeInsets.only(left: 60),
          child: const Text(
            " Edit Profile",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 0),
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(
                        image: AssetImage("./images/profile.jpg"),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      margin: const EdgeInsets.only(
                        left: 30,
                      ),
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.blue.shade600,
                      ),
                      child: const Icon(
                        CupertinoIcons.camera,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Form(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(15),
                      child: TextFormField(
                        decoration: InputDecoration(
                          label: const Text("Full Name"),
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: Colors.blue.shade600,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue.shade600,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(15),
                      child: TextFormField(
                        decoration: InputDecoration(
                          label: const Text("Email"),
                          prefixIcon: Icon(
                            Icons.mail_outline,
                            color: Colors.blue.shade600,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue.shade600,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(15),
                      child: TextFormField(
                        decoration: InputDecoration(
                          label: const Text("Phone Number"),
                          prefixIcon: Icon(
                            Icons.call_outlined,
                            color: Colors.blue.shade600,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue.shade600,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(15),
                      child: TextFormField(
                        decoration: InputDecoration(
                          label: const Text("Password"),
                          prefixIcon: Icon(
                            Icons.fingerprint_outlined,
                            color: Colors.blue.shade600,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue.shade600,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.all(15),
                      child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProfileScreen(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue.shade600,
                              side: BorderSide.none,
                              shape: const StadiumBorder()),
                          child: const Text(
                            "Edit Profile",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                          child: const Text.rich(
                            TextSpan(
                              text: "Joined ",
                              style: TextStyle(fontSize: 12),
                              children: [
                                TextSpan(
                                  text: "20 June 2022",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.redAccent.withOpacity(.1),
                            elevation: 0,
                            foregroundColor: Colors.red,
                            shape: const StadiumBorder(),
                            side: BorderSide.none
                          ),
                          child: const Text("Delete"),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
