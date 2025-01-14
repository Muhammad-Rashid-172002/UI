import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/Buttom_/Nav_bar/splash.dart';
import 'package:flutter_application_3/Buttom_/user_profile_edit.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int currentIndex = 0;
  List pages = [
    Home_Screen(),
    notificationScreen(),
    historyScreen(),
    profileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_outlined),
                label: 'Notifications'),
            BottomNavigationBarItem(
                icon: Icon(Icons.history_outlined), label: 'History'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: 'Profile')
          ],
          currentIndex: currentIndex,
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.black,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          }),
    );
  }
}

class profileScreen extends StatelessWidget {
  profileScreen({
    super.key,
  });
  bool isActive = false;
  void troggle() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 50),
          child: Text(
            'Profile',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Image.asset(
          'asstes/3.PNG',
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Text(
                'Stay Active',
                style: TextStyle(fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 180),
                child: Container(
                  child: Icon(
                    Icons.toggle_on,
                    size: 50,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Text('This will Show active to the student so they '),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('can call you any time'),
          ],
        ),
        Divider(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.person_2_outlined),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => editprofile()));
                  },
                  child: Text('Edit Profile'))
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.calendar_month),
              SizedBox(
                width: 20,
              ),
              Text('Set Date and Time')
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.notifications_none),
              SizedBox(
                width: 20,
              ),
              Text('Notification')
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.mail_sharp),
              SizedBox(
                width: 20,
              ),
              Text('Messages')
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.contact_phone_outlined),
              SizedBox(
                width: 20,
              ),
              Text('Contact')
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.swap_horiz,
                    color: Colors.white,
                  ),
                  Text(
                    'SWITCH TO STUDENT',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

class historyScreen extends StatelessWidget {
  historyScreen({
    super.key,
  });
  bool isplace = true;
  void selectTab(val) {}
  List name = [
    'Laila',
    'Laiba',
    'Ayasha',
    'Sidra',
    'Imran ',
    'Hizer',
    'Awais',
    'Saba'
  ];
  List time = [
    'Today, 09:00 - 09:30',
    'Today, 09:40 - 10:15',
    'Today, 10:30 - 11:00',
    'Today, 11:30 - 12:00',
    'Today, 12:30 - 01:00',
    'Today, 01:30 - 02:00',
    'Today, 02:30 - 03:00',
    'Today, 03:30 - 04:00'
  ];

  List image = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCiZD12EU_Zm57G1wc72AaNVHGoLhQBIHPcg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ51nUb6S0mAbeMJ31c40qLhx3Vkmn6OBcl3g&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZJLzECaPv_UyJKYF-ZHhBnv3IGdKHBtuETw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM0zKq2pASTfiq7mtmccFdS5E65fbXzB1HBA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx8BX0Yi1lbZ6V4Ym65MRFyTycxKXDezjCzg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRT7GKkoc8DbkaH5QvO_5WtWi602ScjD_Mr5Q&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZ3MZfSeFp21y_hzRY0dyyDrX8OpADMPlEDw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQD6V2A5AYbTf6SxKO8u2NMPrtwh03AYzCrIQ&s',
  ];
  List color = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 60, left: 25),
          child: Text(
            'History',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 40),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      selectTab(true);
                    },
                    child: Container(
                      height: 30,
                      width: 130,
                      decoration: BoxDecoration(
                          color: isplace ? Colors.amber : Colors.white,
                          borderRadius: BorderRadius.circular(18)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Voice Call',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, right: 40),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      selectTab(false);
                    },
                    child: Container(
                      height: 30,
                      width: 130,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.amber),
                          color: isplace ? Colors.white : Colors.amber,
                          borderRadius: BorderRadius.circular(18)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Vedio Call',
                              style: TextStyle(color: Colors.amber)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 30),
          child: Text("Today"),
        ),
        Expanded(
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: color.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: color[index],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 10)
                        ]),
                    child: Row(
                      children: [
                        Container(
                          width: 90,
                          height: 100,
                          child: ClipRRect(
                            child: Image.network(
                              image[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(children: [
                              Text(
                                'Vedio Call',
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                ' - Completed',
                                style: TextStyle(color: Colors.green),
                              ),
                            ]),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              time[index],
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}

class notificationScreen extends StatelessWidget {
  notificationScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 80, left: 20),
          child: Text(
            'Notification',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 10),
          child: Text('Today Jan,10,2025'),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)],
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      CupertinoIcons.alarm,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'Class Alarm',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Your class will be started in 30 minutes',
                      style: TextStyle(fontSize: 13),
                    ),
                    Text(
                      'Stay with app and take care',
                      style: TextStyle(fontSize: 13),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)],
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      CupertinoIcons.check_mark_circled_solid,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'Class Confirmed',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Class confirmed Adam smith Call will',
                      style: TextStyle(fontSize: 13),
                    ),
                    Text(
                      'be held at 11:00 AM | 12 Jan, 2025',
                      style: TextStyle(fontSize: 13),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text('Yesterday, Jan 09, 2025'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)],
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      CupertinoIcons.alarm,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'Class Alarm',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Your class will be started in 15 minutes',
                      style: TextStyle(fontSize: 13),
                    ),
                    Text(
                      'Stay with app and take care',
                      style: TextStyle(fontSize: 13),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Yesterday, Jan 08, 2025'),
        ),
        Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)],
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(
                    CupertinoIcons.check_mark_circled_solid,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Class Confirmed',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Class confirmed Adma smith Call will',
                    style: TextStyle(fontSize: 13),
                  ),
                  Text(
                    'be held at 1:00 AM | 5 Jan 2025',
                    style: TextStyle(fontSize: 13),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Home_Screen extends StatelessWidget {
  Home_Screen({
    super.key,
  });

  bool isActive = true;
  void changeTab(bool state) {}

  List name = [
    'Yasir',
    'Ali ',
    'Imran Abbas',
    'Sidra',
    'Saba',
    'Ayasha',
    'Nadia',
    'Laiba'
  ];

  List image = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS39PZmMFkK6rrYtI-9lvgfcggaiCPTAnORjA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkwcJvafhYw2r71VkXNhOgHvTTXmhmW-jciA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx8BX0Yi1lbZ6V4Ym65MRFyTycxKXDezjCzg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQD6V2A5AYbTf6SxKO8u2NMPrtwh03AYzCrIQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCiZD12EU_Zm57G1wc72AaNVHGoLhQBIHPcg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZAxCSewZPzjcBfu0Sn-k1jnzgciWMEcSI4w&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQD6V2A5AYbTf6SxKO8u2NMPrtwh03AYzCrIQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM0zKq2pASTfiq7mtmccFdS5E65fbXzB1HBA&s',
  ];
  List color = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white
  ];
  List time = [
    '11:30',
    '12:00',
    '12:30',
    '01:00',
    '01:30',
    '02:00',
    '02:30',
    '03:00'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 60, left: 98, bottom: 20),
          child: Text(
            'English TalkE',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Classes',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 40),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      changeTab(true);
                    },
                    child: Container(
                      height: 30,
                      width: 130,
                      decoration: BoxDecoration(
                        color: isActive ? Colors.amber : Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 10)
                        ],
                        border: Border.all(
                            color: isActive ? Colors.white : Colors.amber),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Upcoming',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, right: 40),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      changeTab(false);
                    },
                    child: Container(
                      height: 30,
                      width: 130,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.amber),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 10)
                          ],
                          color: isActive ? Colors.white : Colors.amber,
                          borderRadius: BorderRadius.circular(18)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Past', style: TextStyle(color: Colors.amber)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Text('Tomorrow, Jan 12, 2025'),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: color.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Container(
                          width: 90,
                          height: 100,
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.only(topLeft: Radius.circular(10)),
                            child: Image.network(
                              image[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              name[index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(children: [
                              Text(
                                'Vedio Call -',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                ' Scheduled',
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                              ),
                            ]),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              time[index],
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
