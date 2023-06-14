import 'package:flutter/material.dart';
import 'package:home_rental/screens/details_screen.dart';
import 'package:home_rental/widgets/house_card.dart';

import '../models/item_model.dart';

// ignore: must_be_immutable
class SuggestionList extends StatefulWidget {
  SuggestionList(this.title, this.items, {super.key});
  String? title;
  List<Item> items;
  @override
  State<SuggestionList> createState() => _SuggestionListState();
}

class _SuggestionListState extends State<SuggestionList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title!,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            TextButton(
              onPressed: () => {},
              child: const Text("See All"),
            ),
          ],
        ),
        const SizedBox(
          height: 12.0,
        ),
        SizedBox(
          height: 340.0,
          width: double.infinity,
          // use card widget
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.items.length,
            itemBuilder: (context, index) => ItemCard(
              widget.items[index],
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(widget.items[index]),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
