import 'package:flutter/material.dart';
import 'package:home_rental/sign-up.dart';

import 'home.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 30),
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.blue.shade900,
                Colors.blue.shade800,
                Colors.blue.shade400,
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome To",
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Rental App",
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const SizedBox(
                          height: 40,
                        ),
                      const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SingleChildScrollView(
                        child: Container(
                          margin: const EdgeInsets.only(left: 0),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
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
                                            borderRadius:
                                                const BorderRadius.all(
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
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(20),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
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
                                builder: (context) => const Home(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue.shade600,
                              side: BorderSide.none,
                              shape: const StadiumBorder()),
                          child: const Text(
                            "Login",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                      Row(
                        children: [
                          const SizedBox(
                            height: 60,
                          ),
                          const Text("Don't have account?"),
                          ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent.withOpacity(.1),
                            elevation: 0,
                            foregroundColor: Colors.blue,
                            shape: const StadiumBorder(),
                            side: BorderSide.none
                          ),
                          child: const Text("Create Account"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUpPage(),
                              ),
                            );
                          },
                        ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
