import 'package:flutter/material.dart';
import 'package:flutter_application_3/gridvie.dart';

class gridview extends StatefulWidget {
  const gridview({super.key});

  @override
  State<gridview> createState() => _gridviewState();
}

class _gridviewState extends State<gridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Flutter Tutorial',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Gridvie()));
            },
          ),
          Icon(
            Icons.forward_rounded,
            size: 10,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
                padding: EdgeInsets.all(16),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, crossAxisSpacing: 3, mainAxisSpacing: 3),
                scrollDirection: Axis.vertical,
                itemCount: 32,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color:
                            Colors.primaries[index % Colors.primaries.length],
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        '$index',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
