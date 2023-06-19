import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          toolbarHeight: 80.0,
          title: Row(children: [
            Icon(
              CupertinoIcons.search,
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
      child: Text("Message Screen"),
    )
    );
   
  }
}
