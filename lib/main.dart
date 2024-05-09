import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinomediya/pages/downloadspage.dart';
import 'package:kinomediya/pages/homepage.dart';
import 'package:kinomediya/pages/profile.dart';
import 'package:kinomediya/pages/saveespage.dart';
import 'package:kinomediya/pages/searchpage.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainApp(),
  ));
}

// ignore: use_key_in_widget_constructors
class MainApp extends StatefulWidget {
  @override
  State<MainApp> createState() {
    return _MainApp();
  }
}

class _MainApp extends State<MainApp> {
  List<Widget> pages = [HomePage(), SearchPage(), SavedPage(), DownloadPage(), Profile()];
  int currentpage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 11, 1, 44),
      body: pages[currentpage],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 11, 1, 44),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
                onPressed: () {
                  setState(() {
                    currentpage = 0;
                  });
                },
                icon: Icon(
                  Icons.home_rounded,
                  size: 40,
                  color: currentpage == 0 ? Colors.deepPurpleAccent : Colors.grey.shade400,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentpage = 1;
                  });
                },
                icon: Icon(
                  Icons.search_rounded,
                  size: 40,
                  color: currentpage == 1 ? Colors.deepPurpleAccent : Colors.grey.shade400,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentpage = 2;
                  });
                },
                icon: Icon(
                  CupertinoIcons.bookmark,
                  size: 40,
                  color: currentpage == 2 ? Colors.deepPurpleAccent : Colors.grey.shade400,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentpage = 3;
                  });
                },
                icon: Icon(
                  CupertinoIcons.arrow_down_to_line,
                  size: 40,
                  color: currentpage == 3 ? Colors.deepPurpleAccent : Colors.grey.shade400,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentpage = 4;
                  });
                },
                icon: Icon(
                  Icons.person,
                  size: 40,
                  color: currentpage == 4 ? Colors.deepPurpleAccent : Colors.grey.shade400,
                ))
          ],
        ),
      ),
    );
  }
}
