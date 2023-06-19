import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
      child: Text("Search Screen"),
    )
    );
   
  }
}
