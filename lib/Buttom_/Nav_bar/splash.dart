import 'package:flutter/material.dart';
import 'package:flutter_application_3/Buttom_/Nav_bar/English_TalkE.dart';

class Splas_Screen extends StatefulWidget {
  const Splas_Screen({super.key});

  @override
  State<Splas_Screen> createState() => _Splas_ScreenState();
}

class _Splas_ScreenState extends State<Splas_Screen> {
  void initstate() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => NavigationScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('asstes/4.PNG'),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
