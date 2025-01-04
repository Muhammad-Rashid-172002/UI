import 'package:flutter/material.dart';

class screen_Task extends StatefulWidget {
  const screen_Task({super.key});

  @override
  State<screen_Task> createState() => _screen_TaskState();
}

class _screen_TaskState extends State<screen_Task> {
  List image = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSC_qFKFusoXJuQImfQ5dciTLqZf84AcLOxQw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQisbe2obHD3kqfQCrUi69pFdp1wTCqFai-Iw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJ6rlpWbXCyczRrZdEOVw19_2dHnH6xDK3Bw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRp2JlxtmppqM-_yj-HNb1BgO50_kR5LpXDw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrngWvyxltbId_3NbtCNuNgZyRNbP_3NGsfw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgJd3A8MGHuq0DrlJQqPg5V8COBJR6EuYdNA&s',
  ];
  List Name = [
    'Bad Room1',
    'Bad Room2',
    'Bad Room3',
    'Living Room',
    'Kitchen',
    'Bath Room'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 33, 150, 243),
        title: Text(
          'Control Panel',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.circle,
            size: 50,
            color: Colors.lightBlue,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            padding: EdgeInsets.all(30),
            child: Align(
              alignment: Alignment.centerLeft,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('All Rooms',
              textAlign: TextAlign.right,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.blueAccent)),
          TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search), hintText: 'Search by name'),
          ),
          Expanded(
            child: GridView.builder(
                padding: EdgeInsets.all(16),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 1, mainAxisSpacing: 1),
                scrollDirection: Axis.vertical,
                itemCount: image.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Container(
                      height: 100,
                      color: Color.fromARGB(222, 253, 254, 255),
                      child: Column(
                        children: [
                          Image.network(
                            image[index],
                            width: 120,
                            height: 120,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            Name[index],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
