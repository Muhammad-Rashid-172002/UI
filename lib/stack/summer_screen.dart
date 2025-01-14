import 'package:flutter/material.dart';
import 'package:flutter_application_3/stack/task1.dart';

class Summerscreen extends StatefulWidget {
  const Summerscreen({super.key});

  @override
  State<Summerscreen> createState() => _SummerscreenState();
}

class _SummerscreenState extends State<Summerscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 230,
            width: 370,
            decoration: BoxDecoration(color: Colors.pink),
            padding: EdgeInsets.only(bottom: 70, right: 320),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => stackscreen()));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back_ios_new),
                ],
              ),
            ),
          ),
          Positioned(right: 20, top: 70, child: Icon(Icons.more_horiz)),
          Positioned(
            top: 130,
            child: Text(
              'Summer',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Positioned(
            top: 190,
            child: Container(
              height: 200,
              width: 320,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'Colorful floral\nsummer outfit',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'by pantaioons',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: List.generate(5, (index) {
                          int rating = 3;
                          return Icon(
                            index < rating ? Icons.star : Icons.star_border,
                            color: Colors.amber,
                            size: 20,
                          );
                        }),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text("Rs.210"),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: 25,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          textAlign: TextAlign.center,
                          'Shop',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmyLbWFCrnL6lTsi0R5D8TuirFaLT3eikh4g&s',
                    width: 140,
                    height: 140,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: -350,
            child: Container(
              height: 170,
              width: 320,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(padding: EdgeInsets.all(8)),
                      Text(
                        'Izabel London\nA-Line Dress',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'by pantaioons',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: List.generate(5, (index) {
                          int rating = 3;
                          return Icon(
                            index < rating ? Icons.star : Icons.star_border,
                            color: Colors.amber,
                            size: 20,
                          );
                        }),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text("Rs.249"),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: 25,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          textAlign: TextAlign.center,
                          'Shop',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Image.network(
                    'https://cdn.shopify.com/s/files/1/0555/1049/9495/files/HH_4c09d9c4-f888-4471-8b1f-f7915777c13c_480x480.webp?v=1676394984',
                    width: 140,
                    height: 140,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
