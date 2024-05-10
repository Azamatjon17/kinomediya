import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kinomediya/utils/extantions.dart';
import 'package:kinomediya/utils/movieitems.dart';

class DownloadPage extends StatefulWidget {
  @override
  State<DownloadPage> createState() {
    return _DownloadPage();
  }
}

class _DownloadPage extends State<DownloadPage> {
  List smallpages = [const Downloding(), MoviesList()];
  int curentsmall = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 11, 1, 44),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Download",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white60),
        ),
        backgroundColor: const Color.fromARGB(255, 11, 1, 44),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: <Widget>[
            15.height(),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkWell(
                      onTap: () {
                        setState(() {
                          curentsmall = 1;
                        });
                      },
                      child: Text(
                        "List Movie",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: curentsmall == 1 ? Colors.deepPurpleAccent : Colors.white70),
                      )),
                  InkWell(
                      onTap: () {
                        setState(() {
                          curentsmall = 0;
                        });
                      },
                      child: Text(
                        "Downloading",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: curentsmall == 0 ? Colors.deepPurpleAccent : Colors.white70),
                      ))
                ],
              ),
            ),
            20.height(),
            Expanded(child: smallpages[curentsmall])
          ],
        ),
      ),
    );
  }
}

class Downloding extends StatelessWidget {
  const Downloding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          MoveItem(
            movename: "Capitan America: The First Avanger (2011)",
            compony: "Marvel",
            size: "1.6 GB",
          ),
          20.height(),
          MoveItem(
            movename: "Capitan America: The First Avanger (2011)",
            compony: "Marvel",
            size: "1.6 GB",
            
          )
        ],
      ),
    );
  }
}

class MoviesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "List Movies",
        style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
