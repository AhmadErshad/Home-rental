import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          toolbarHeight: 80.0,
          title: Row(children: [
            Icon(
              CupertinoIcons.heart,
              color: Colors.red.shade600,
            ),
            const Text(
              "Favorite",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ]),
    ),
    );
  }
}
