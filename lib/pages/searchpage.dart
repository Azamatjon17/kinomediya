import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kinomediya/utils/extantions.dart';
import 'package:kinomediya/utils/movieitems.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          40.height(),
          Container(
            padding: const EdgeInsets.only(top: 5, bottom: 5, right: 20, left: 20),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.white30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    Icon(
                      Icons.search_rounded,
                      size: 40,
                      color: Colors.grey.shade300,
                    ),
                    10.width(),
                    Text(
                      "Comedy",
                      style: TextStyle(color: Colors.grey.shade300, fontSize: 18),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.cancel,
                      size: 30,
                      color: Colors.grey.shade300,
                    ))
              ],
            ),
          ),
          40.height(),
          const Text(
            "Result for \"comedy\"",
            style: TextStyle(fontSize: 20, color: Colors.white30, fontWeight: FontWeight.bold),
          ),
          15.height(),
          Flexible(
            child: SingleChildScrollView(
              child: Wrap(
                spacing: 5,
                runSpacing: 15,
                children: <Widget>[for (var i = 0; i < 30; i++) i % 2 == 0 ? Imagemarvel("marvel") : Imagemarvel("spider")],
              ),
            ),
          )
        ],
      ),
    );
  }
}
