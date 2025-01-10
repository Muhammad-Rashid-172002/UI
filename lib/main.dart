import 'package:flutter/material.dart';
import 'package:flutter_application_3/Buttom_/Nav_bar/Nav_bar.dart';
import 'package:flutter_application_3/T_shirt.dart';
import 'package:flutter_application_3/Tshirt_shop.dart';
import 'package:flutter_application_3/gridvie.dart';
import 'package:flutter_application_3/gridview.dart';
import 'package:flutter_application_3/instagram.dart';
import 'package:flutter_application_3/list_view.dart';
import 'package:flutter_application_3/control_panel.dart';
import 'package:flutter_application_3/security.dart';
import 'package:flutter_application_3/stack/summer.dart';
import 'package:flutter_application_3/stack/task1.dart';
import 'package:flutter_application_3/task2.dart';
import 'package:flutter_application_3/task3.dart';
import 'package:flutter_application_3/task4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var listView = ListView();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Navigationscreen(),
      //stackscreen(),
      //Summerscreen(),
      //Securityscreen(),
      //TShirt(),
      // TshirtShop(),
      //  Gridvie(),
      //gridview(),
      //screen_Task(),
      //list_view(),
      //Instagram(),
      //Task4(),
      //Task3(),
      //Task2(),
    );
  }
}
