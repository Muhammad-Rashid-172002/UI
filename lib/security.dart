import 'package:flutter/material.dart';

class Securityscreen extends StatefulWidget {
  const Securityscreen({super.key});

  @override
  State<Securityscreen> createState() => _SecurityscreenState();
}

class _SecurityscreenState extends State<Securityscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Container(
        color: Color.fromARGB(255, 25, 5, 209),
        height: 170,
        width: 800,
        child: Container(
          height: 100,
          width: 100,
          padding: EdgeInsets.all(10),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset('asstes\image.jpeg'),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      'M.Rashid',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Peshwar.PK',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  width: 145,
                ),
                Icon(
                  Icons.send,
                  color: Colors.white,
                ),
              ],
            ),
          ]),
        ),
      ),
    ));
  }
}
