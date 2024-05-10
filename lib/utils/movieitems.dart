import 'package:flutter/material.dart';
import 'package:kinomediya/utils/extantions.dart';

// ignore: must_be_immutable
class MoveItem extends StatelessWidget {
  String movename;
  String compony;
  String size;
  MoveItem({super.key, required this.movename, required this.compony, required this.size});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.white30),
      child: Row(
        children: <Widget>[
          Imagemarvel("spider"),
          10.width(),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  movename,
                  style: const TextStyle(fontSize: 18, color: Colors.white70, fontWeight: FontWeight.w500),
                ),
                Text(
                  compony,
                  style: const TextStyle(fontSize: 22, color: Colors.white70, fontWeight: FontWeight.w900),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      size,
                      style: const TextStyle(fontSize: 16, color: Colors.white70, fontWeight: FontWeight.w500),
                    ),
                    Row(children: [
                      const Icon(
                        Icons.play_circle_fill,
                        color: Colors.white70,
                        size: 30,
                      ),
                      PopupMenuButton(
                          color: Colors.white70,
                          iconColor: Colors.white70,
                          itemBuilder: (ctx) {
                            return [
                              PopupMenuItem(
                                onTap: () {},
                                child: const Text("Re Download"),
                              ),
                              PopupMenuItem(
                                onTap: () {},
                                child: const Text("Details"),
                              ),
                              PopupMenuItem(
                                onTap: () {},
                                child: const Text("Delate"),
                              ),
                            ];
                          }),
                    ])
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Imagemarvel extends StatelessWidget {
  String imageaddres;
  Imagemarvel(this.imageaddres, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 130,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), image: DecorationImage(image: AssetImage("assets/$imageaddres.png"))),
    );
  }
}
