import 'package:flutter/material.dart';

import '../models/item_model.dart';
import '../widgets/search_field.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});
  
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  void updateList(String value) {
    // this is the function that will filter our list
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.blueAccent),
        toolbarHeight: 80.0,
        title: Container(
          margin: const EdgeInsets.only(left: 80),
          child: const Text(
            " Search",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Search For Renting",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              // use widget
              const SearchField(),
              const SizedBox(
                height: 40,
              ),
              // Expanded(
              //   child: ListView.builder(
              //     // itemCount: displayList.length,
              //     itemBuilder: (context, index) => const ListTile(),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
