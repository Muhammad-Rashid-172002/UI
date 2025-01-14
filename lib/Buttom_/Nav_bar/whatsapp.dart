import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class whatsappScreen extends StatefulWidget {
  const whatsappScreen({super.key});

  @override
  State<whatsappScreen> createState() => _whatsappScreenState();
}

class _whatsappScreenState extends State<whatsappScreen> {
  int currentIndex = 0;

  List pages = [
    ChatsScreen(),
    UpdateScreen(),
    CommunitiesScreen(),
    CallScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: 'Updates'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_add_rounded), label: 'Communities'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls')
        ],
        currentIndex: currentIndex,
        selectedItemColor: Colors.lightBlue,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}

class ChatsScreen extends StatelessWidget {
  ChatsScreen({
    super.key,
  });
  List image = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdTwRQixFQOTpQQPkvCUYXF_XsqRfovoX-uA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZAfwIQ2uNsGU691gvLtdTdYva-dK6NgumGQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdOy8T2bNz8A2GW3lNUsOT8nn73VN8GzTW4g&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgi5QWa44hM8fIS26p-ERHujLg24FmLPNNQQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYLYVlJ4_nIB-rwiY2rI1Xz7E7HSS_NmgCzw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzGrJ6vHehJJ31pYnJvWY6_Mz6VyTxW6dxAw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5lr7guJNq9-YHR9NrpEQmQibns3HnuPl1kg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4G5bd3Ib3NjPkwKhvMv3jLEDzyt1QE-klVA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVMUsyqQli5cx0262qhY7tjzIQcPhghTE9Dg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFCJ_MZ2ml6mjMUGIacHKgzqGLLW1_1lo1jA&s',
  ];
  List name = [
    'Salman khan',
    'SRK',
    'Adnan',
    'Yamaan',
    'khan',
    'King',
    'Saad',
    'Areeba',
    'Sadia',
    'khani'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 10),
          child: Row(
            children: [
              Text(
                'WhatsApp',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 170,
              ),
              Icon(Icons.camera_enhance_outlined),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Search or Ask Meta AI',
                prefixIcon: Icon(
                  Icons.circle_outlined,
                  color: Colors.blue,
                  size: 25,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                )),
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(7),
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(100)),
                          clipBehavior: Clip.hardEdge,
                          child: ClipRRect(
                            child: Image.network(
                              image[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(name[index]),
                        ),
                      ],
                    ),
                  );
                })),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 205, 188, 188),
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.circle_outlined,
                  size: 30,
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 250, bottom: 20),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(Icons.add_box_rounded),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class UpdateScreen extends StatelessWidget {
  UpdateScreen({
    super.key,
  });
  List name = [
    'Add Status',
    'Salman Khan',
    'Adnan',
    'king',
    'Saad',
    'Yamaan',
    'Sidra'
  ];
  List images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUTEXLZSRhOEJX8GanO9UD8W3qMPrESoiyPg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_ExFo-EDrO_5O0ieIN09L3AZLrkF4IfXvcw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMLdNL9xTLB4MSj_-JJ0PBkMzfPNY5_iipnQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNnJB8LgaG1Rstkyb2k92zkV_cE7yqXIMNqQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqkorN3-G4WgZe7boV2PEgfkFG612fceod0g&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdr0odhe56dCgBZ2IfcomSIBH2Z-SwKkkDfg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS__FGA-kgW9An-N1LFD4bx8vY3Vrxel1d2tQ&s'
  ];
  List image1 = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdTwRQixFQOTpQQPkvCUYXF_XsqRfovoX-uA&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZAfwIQ2uNsGU691gvLtdTdYva-dK6NgumGQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdOy8T2bNz8A2GW3lNUsOT8nn73VN8GzTW4g&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgi5QWa44hM8fIS26p-ERHujLg24FmLPNNQQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYLYVlJ4_nIB-rwiY2rI1Xz7E7HSS_NmgCzw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzGrJ6vHehJJ31pYnJvWY6_Mz6VyTxW6dxAw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFCJ_MZ2ml6mjMUGIacHKgzqGLLW1_1lo1jA&s',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Updates',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  Icon(Icons.camera_enhance_outlined),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.search),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10),
                  child: Text(
                    'Status',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  itemCount: 7,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(5),
                      child: Container(
                        height: 250,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.tealAccent,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.black,
                                ),
                                clipBehavior: Clip.hardEdge,
                                child: ClipRRect(
                                    child: Image.network(
                                  image1[index],
                                  fit: BoxFit.cover,
                                )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 60),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    name[index],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: Row(
                children: [
                  Text(
                    'Channels',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                  SizedBox(
                    width: 180,
                  ),
                  Text(
                    'Explore  >',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                'Stay updated on topics that matter to you. Find\nchannels to follow bellow'),
            Padding(
              padding: const EdgeInsets.only(top: 230, left: 250),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(224, 192, 174, 174),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.edit,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                    child: Icon(
                      Icons.add_a_photo_rounded,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CommunitiesScreen extends StatelessWidget {
  CommunitiesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 10),
          child: Row(
            children: [
              Text(
                'Communities',
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(
                width: 130,
              ),
              Icon(Icons.camera_alt_outlined),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.more_vert),
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Center(
          child: Image.asset(
            'asstes/8.jpeg',
            width: 250,
            height: 250,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Center(
            child: Text(
          'Stay connected with a \n           community',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        )),
        Center(
            child: Text(
                'Communities bring members together in \ntopic-based groups and make it easy to get \nadmin announcements. Any community your\n            added to will appear here ')),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            'See example communities   >',
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
            height: 30,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(20)),
            child: Text(
              'Start your community',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

class CallScreen extends StatelessWidget {
  CallScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 10),
          child: Row(
            children: [
              Text(
                'Calls',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: 200,
              ),
              Icon(Icons.camera_alt_outlined),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.search),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 10),
          child: Row(
            children: [
              Text(
                'Favorites',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.green),
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Add favorite',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          height: 200,
        ),
        Center(
          child: Text('To start contacts who have'),
        ),
        Text('WhatsApp, tap at the'),
        Text('at the bottom of your\n       screen.'),
        Padding(
          padding: const EdgeInsets.only(top: 200, left: 250),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(10)),
            child: Icon(
              Icons.phone,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
