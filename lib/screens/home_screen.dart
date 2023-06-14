import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/item_model.dart';
import '../widgets/search_field.dart';
import '../widgets/select_category.dart';
import '../widgets/suggestion_list.dart';

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
          title: Row(children: [
            Icon(
              Icons.location_on,
              color: Colors.blue.shade600,
            ),
            const Text(
              "Herat, Afghanistan",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ]),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.grey.shade600,
              ),
            ),
          ]),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // use widget 
              const SearchField(),
              const SelectCategory(),
              const SizedBox(
                height: 20.0,

              ),
              SuggestionList("Recommendation for you", Item.recommendation),
              const SizedBox(
                height: 20.0,
              ),
              SuggestionList("Nearby you", Item.nearby),
            ],
          ),
        ),
      ),

      // add bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue.shade600,
        unselectedItemColor: Colors.grey.shade600,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart), label: "Favorites"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: "Messages"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person), label: "Profile"),
        ],
      ),
    );
  }
}
