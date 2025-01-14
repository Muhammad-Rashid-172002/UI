import 'package:flutter/material.dart';

import 'package:flutter_application_3/stack/summer_screen.dart';

class stackscreen extends StatefulWidget {
  const stackscreen({super.key});

  @override
  State<stackscreen> createState() => _stackscreenState();
}

class _stackscreenState extends State<stackscreen> {
  List color = [Colors.purple, Colors.pink, Colors.green, Colors.amber];
  List text = ['winter', 'Summer', 'Autumn', 'Spring'];
  List Color1 = [
    Colors.blueAccent,
    Colors.deepOrange,
    const Color.fromARGB(
      255,
      233,
      64,
      129,
    ),
    Colors.blueGrey,
    Colors.purple,
  ];
  List tag = ['Kurtas', 'Jackets', 'ShalwarKamez', 'Jenez', 'Caps'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: 370,
            height: 230,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
            ),
          ),
          Positioned(
            top: 150,
            child: Container(
              height: 180,
              width: 320,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Positioned(
              top: 110,
              child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: ClipOval(
                    child: Image(
                      image: NetworkImage(
                        'https://scontent.fisb6-2.fna.fbcdn.net/v/t39.30808-6/464936740_526349860295867_467513989346817304_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeF8Ydt0oSQ-w_H1E6w0lSWXOM5Fy5hYll04zkXLmFiWXVlC295ojAOXTUzTfajdq5_GHf5xAYUuHP8LMQXZZNMA&_nc_ohc=Wr5YWAQXc8UQ7kNvgHK2VHi&_nc_oc=Adha6841dciwLSzuLNIxj8WhFIm-KbFaY9OvXl4JErbhGIefiA5UvJTOYe6liZQtIMvBl-1CLXmbLfMsbh26IelB&_nc_zt=23&_nc_ht=scontent.fisb6-2.fna&_nc_gid=ApzwOL8HqagwYoNIwavJIf6&oh=00_AYD5tQRWUoVwMlELx-lUJUAgOoowRxl8KdmZSlph21nPJA&oe=67827F7F',
                      ),
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ))),
          Positioned(
            top: 220,
            child: Text(
              'M.Rashid',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
              height: 560,
              width: 300,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'PURCHASED',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                        Text(
                          '120',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: 19),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('SELLES',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 12)),
                        Text(
                          '271',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: 19),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'LIKES',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                        Text(
                          '12k',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: 19),
                        )
                      ],
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 330,
              right: 250,
              child: Text(
                'Collection',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
          Column(
            children: [
              SizedBox(
                height: 350,
                width: 200,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 170,
                  child: Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: color.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Summerscreen()));
                                },
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: color[index],
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    children: [
                                      Padding(padding: EdgeInsets.all(8)),
                                      Text(
                                        text[index],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          })),
                ),
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.only(top: 560, right: 280),
              child: Text(
                'Tags',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 570),
            child: SizedBox(
              height: 170,
              child: Expanded(
                  child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 5,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 4,
                          crossAxisSpacing: 4,
                          childAspectRatio: 3.3),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color1[index],
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Padding(padding: EdgeInsets.all(20)),
                                Text(
                                  tag[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      })),
            ),
          )
        ],
      ),
    ));
  }
}
