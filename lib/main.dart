import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[400],
        appBar: AppBar(
          title: Text('Magic 8 Ball'),
          backgroundColor: Colors.blue[800],
        ),
        body: ballpage(),
      ),
    ),
  );
}

class ballpage extends StatefulWidget {
  const ballpage({super.key});

  @override
  State<ballpage> createState() => _ballpageState();
}

class _ballpageState extends State<ballpage> {
  int face = 1;
  void changeface() {
    setState(() {
      face = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          changeface();
          print('$face');
        },
        child: Image.asset('images/ball$face.png'),
      ),
    );
  }
}
