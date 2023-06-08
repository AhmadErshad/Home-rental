import 'package:flutter/material.dart';

class SelectCategory extends StatefulWidget {
  const SelectCategory({super.key});

  @override
  State<SelectCategory> createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      padding: const EdgeInsets.all(8.0),
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          categoryButton(Icons.house_rounded, "Houses"),
          categoryButton(Icons.villa_rounded, "Villa"),
          categoryButton(Icons.apartment_rounded, "Apartment"),
          categoryButton(Icons.castle_rounded, "Castles"),
        ],
      ),
    );
  }
}

Widget categoryButton(IconData icon, String? text) {
  return Container(
    margin: const EdgeInsets.all(18.0),
    width: 80.0,
    height: 80.0,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade100),
    ),
    child: InkWell(
      onTap: () => {
      
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
          icon,
          size: 32,
          color: const Color(0xFF2279FF),
        ),
        Text("$text"),
        ],
      ),
    ),
  );
}