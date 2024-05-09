import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kinomediya/utils/extantions.dart';
import 'package:kinomediya/utils/serach.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 10, left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Container(
              padding: const EdgeInsets.only(top: 5, bottom: 5, right: 100, left: 20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.white54),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.search_rounded,
                    size: 40,
                    color: Colors.grey.shade300,
                  ),
                  Text(
                    "Search by title, genre, actor",
                    style: TextStyle(color: Colors.grey.shade300, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Recent Searches",
            style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          10.height(),
          Wrap(
            spacing: 15,
            runSpacing: 10,
            children: [SearchItems("Marvel"), SearchItems("Capitan Amerika"), SearchItems("Capitan Marvel"), SearchItems("Thar")],
          ),
          25.height(),
          const Text(
            "Popular",
            style: TextStyle(color: Colors.white54, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          10.height(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Container(
                  height: 150,
                  width: 110,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), image: const DecorationImage(image: AssetImage("assets/marvel.png"))),
                ),
                10.width(),
                Container(
                  height: 150,
                  width: 110,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), image: const DecorationImage(image: AssetImage("assets/marvel.png"))),
                ),
                10.width(),
                Container(
                  height: 150,
                  width: 110,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), image: const DecorationImage(image: AssetImage("assets/marvel.png"))),
                ),
                10.width(),
                Container(
                  height: 150,
                  width: 110,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), image: const DecorationImage(image: AssetImage("assets/marvel.png"))),
                ),
                10.width(),
              ],
            ),
          ),
          15.height(),
          const Text(
            "Recommendations for you",
            style: TextStyle(fontSize: 20, color: Colors.white54),
          ),
          15.height(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Container(
                  height: 150,
                  width: 110,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), image: DecorationImage(image: AssetImage("assets/spider.png"))),
                ),
                10.width(),
                Container(
                  height: 150,
                  width: 110,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), image: DecorationImage(image: AssetImage("assets/spider.png"))),
                ),
                10.width(),
                Container(
                  height: 150,
                  width: 110,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), image: DecorationImage(image: AssetImage("assets/spider.png"))),
                ),
                10.width(),
                Container(
                  height: 150,
                  width: 110,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), image: DecorationImage(image: AssetImage("assets/spider.png"))),
                ),
                10.width(),
              ],
            ),
          ),
        
        ],
      ),
    );
  }
}
