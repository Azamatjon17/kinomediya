import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('PopupMenuButton Example'),
        ),
        body: Center(
          child: PopupMenuButton<String>(
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  value: 'option1',
                  child: Text('Option 1'),
                ),
                PopupMenuItem<String>(
                  value: 'option2',
                  child: Text('Option 2'),
                ),
                PopupMenuItem<String>(
                  value: 'option3',
                  child: Text('Option 3'),
                ),
              ];
            },
            onSelected: (String value) {
              print('You selected: $value');
            },
          ),
        ),
      ),
    );
  }
}
