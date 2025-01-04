import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.menu),
        title: Text('Page title'),
        actions: [
          Icon(
            Icons.favorite,
          ),
          Icon(
            Icons.search,
          ),
          Icon(
            Icons.more_vert,
          )
        ],
      ),
    );
  }
}
