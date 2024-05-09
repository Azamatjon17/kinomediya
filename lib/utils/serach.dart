import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchItems extends StatelessWidget {
  String title;
  SearchItems(this.title);
  @override
  Widget build(BuildContext context) {
    return Chip(
      clipBehavior: Clip.hardEdge,
      shadowColor: const Color.fromARGB(255, 25, 5, 97),
      color: const MaterialStatePropertyAll(Color.fromARGB(255, 23, 2, 81)),
      avatar: const Icon(
        CupertinoIcons.clock,
        size: 20,
      ),
      label: Text(
        title,
        style: const TextStyle(color: Color.fromARGB(255, 152, 110, 243), fontSize: 15, fontWeight: FontWeight.w600),
      ),
    );
  }
}
