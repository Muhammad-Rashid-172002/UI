import 'package:flutter/material.dart';
import 'package:flutter_application_3/gridview.dart';

class Gridvie extends StatefulWidget {
  const Gridvie({super.key});

  @override
  State<Gridvie> createState() => _GridvieState();
}

class _GridvieState extends State<Gridvie> {
  List color = [Colors.green, Colors.yellow];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          Icon(Icons.forward),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => gridview()));
            },
          )
        ],
        title: Text(
          'Custom GrideView in Flutter-Scaler Topics',
          style: TextStyle(
            fontSize: 17,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 3,
                      crossAxisSpacing: 3),
                  scrollDirection: Axis.vertical,
                  itemCount: 32,
                  itemBuilder: (context, index) {
                    final bool isEven = index % 2 == 0;
                    return Container(
                      decoration: BoxDecoration(
                          color: isEven ? Colors.yellow : Colors.green),
                      child: Center(
                        child: Text(
                          '$index',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
