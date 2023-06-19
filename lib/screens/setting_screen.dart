import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          toolbarHeight: 80.0,
          title: Row(children: [
            Icon(
              CupertinoIcons.settings,
              color: Colors.red.shade600,
            ),
            const Text(
              "Search",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ]),
    ),
    body: const Center(
      child: Text("Setting Screen"),
    )
    );
   
  }
}
