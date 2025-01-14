import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  bool isActive = true;
  void changeTab(bool state) {
    setState(() {
      isActive = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 35,
              ),
              Text(
                'English TalkE',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Classes',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      changeTab(true);
                    },
                    child: Container(
                      width: 150,
                      height: 43,
                      decoration: BoxDecoration(
                        color: isActive ? Colors.amber : Colors.white,
                        border: Border.all(
                          color: isActive ? Colors.white : Colors.amber,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Upcoming',
                          style: TextStyle(
                            color: isActive ? Colors.white : Colors.amber,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      changeTab(false);
                    },
                    child: Container(
                      width: 150,
                      height: 43,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: isActive ? Colors.amber : Colors.white,
                        ),
                        color: isActive ? Colors.white : Colors.amber,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Past',
                          style: TextStyle(
                            color: isActive ? Colors.amber : Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(blurRadius: 1)]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Icon(
                        CupertinoIcons.search,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Upcoming extends StatefulWidget {
  const Upcoming({super.key});

  @override
  State<Upcoming> createState() => _UpcomingState();
}

class _UpcomingState extends State<Upcoming> {
  // List of image
  List images = [
    'assets/images/home_vd_pic1.jpeg',
    'assets/images/home_vd_pic2.jpg',
    'assets/images/home_vd_pic3.jpg'
  ];
  // List of names
  List names = [
    'Lolla Smith',
    'Jane Cooper',
    'Arlene',
  ];
  // List of video call
  List video = [
    'Video call',
    'Video call',
    'Video call',
  ];
  // List of Scheduled
  List sch = [
    'Scheduled',
    'Scheduled',
    'Scheduled',
  ];
  // List of time
  List time = [
    '11:30 AM',
    '11:30 AM',
    '11:00 PM',
  ];

  // List of image
  List images1 = [
    'assets/images/video_user.jpg',
    'assets/images/home_boy_pic2.jpg',
    'assets/images/home_boy_pic3.jpg'
  ];
  // List of names
  List names1 = [
    'Andres',
    'King',
    'Titus',
  ];
  // List of video call
  List video1 = [
    'Video call',
    'Video call',
    'Video call',
  ];
  // List of Scheduled
  List sch1 = [
    'Scheduled',
    'Scheduled',
    'Scheduled',
  ];
  // List of time
  List time1 = [
    '10:30 AM',
    '10:30 AM',
    '11:00 PM',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Tomorrow, Jan 12 2025',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 350,
          child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Container(
                          width: 90,
                          height: 100,
                          child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10)),
                              child: Image.asset(
                                images[index],
                                fit: BoxFit.cover,
                              )),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              names[index],
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            RichText(
                                text: TextSpan(
                              children: [
                                TextSpan(
                                    text: '${video[index]}',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text: '  ${sch[index]}',
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontWeight: FontWeight.w500)),
                              ],
                            )),
                            Text(
                              time[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        )
                      ],
                    ));
              }),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Today, Jan 11 2025',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 350,
          child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Container(
                          width: 90,
                          height: 100,
                          child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10)),
                              child: Image.asset(
                                images1[index],
                                fit: BoxFit.cover,
                              )),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              names1[index],
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            RichText(
                                text: TextSpan(
                              children: [
                                TextSpan(
                                    text: '${video1[index]}',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text: '  ${sch1[index]}',
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontWeight: FontWeight.w500)),
                              ],
                            )),
                            Text(
                              time1[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        )
                      ],
                    ));
              }),
        ),
      ],
    );
  }
}
