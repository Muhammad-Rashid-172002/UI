import 'package:flutter/material.dart';

class Task3 extends StatefulWidget {
  const Task3({super.key});

  @override
  State<Task3> createState() => _Task3State();
}

class _Task3State extends State<Task3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(200)),
              height: 190,
              width: 190,
              child: Icon(
                Icons.check,
                color: Colors.white,
                size: 70,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const Text(
              'Congratulations!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Your Account is Ready to use',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 210,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Text(
                  'Go To Home',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
