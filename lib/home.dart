import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/favorite_screen.dart';
import 'screens/home_screen.dart';
import 'screens/message_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/search_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List screens = [
    const HomeScreen(),
    const ProfileScreen(),
    const FavoriteScreen(),
    const SearchScreen(),
    const MessageScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = const HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(Icons.add),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        // add backgroundColor for it
        // color: Colors.white60,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 80,
                    onPressed: () {
                      setState(() {
                        currentScreen = const HomeScreen();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_outlined,
                          size: 35,
                          color: currentTab == 0
                              ? Colors.blue.shade600
                              : Colors.grey.shade200,
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 80,
                    onPressed: () {
                      setState(() {
                        currentScreen = const SearchScreen();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.search,
                          size: 35,
                          color: currentTab == 1
                              ? Colors.blue.shade600
                              : Colors.grey.shade200,
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 80,
                    onPressed: () {
                      setState(() {
                        currentScreen = const FavoriteScreen();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.heart,
                          size: 35,
                          color: currentTab == 2
                              ? Colors.blue.shade600
                              : Colors.grey.shade200,
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 80,
                    onPressed: () {
                      setState(() {
                        currentScreen = const MessageScreen();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.message,
                          size: 35,
                          color: currentTab == 3
                              ? Colors.blue.shade600
                              : Colors.grey.shade200,
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 80,
                    onPressed: () {
                      setState(() {
                        currentScreen = const ProfileScreen();
                        currentTab = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.person,
                          size: 35,
                          color: currentTab == 4
                              ? Colors.blue.shade600
                              : Colors.grey.shade200,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
