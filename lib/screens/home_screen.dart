import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        toolbarHeight: 80.0,
        title: Row(
          children: [
            Icon(
              Icons.location_on,
              color: Colors.blue.shade600,
              ),
              Text(
                "Herat, Afghanistan",
                 style: TextStyle(
                  color: Colors.black,
                 ),
                 ),
            ]),
            actions: [
              IconButton(onPressed: () {

            }, icon: Icon(
              Icons.notifications,
               color: Colors.green.shade600,
               ),
               ),
          ]
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              
            ],
          ),  
        ),
      ),
    );
  }
}