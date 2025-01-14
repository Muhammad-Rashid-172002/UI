import 'package:flutter/material.dart';

class polo extends StatefulWidget {
  const polo({super.key});

  @override
  State<polo> createState() => _poloState();
}

class _poloState extends State<polo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          child: Icon(Icons.arrow_back_ios_new),
          color: Colors.white12,
        ),
      ),
    );
  }
}
