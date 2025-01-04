import 'package:flutter/material.dart';

class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  double value = 3.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.camera_alt),
        actions: [Icon(Icons.send)],
        title: Text(
          'Instagram',
          style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30),
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Stories'),
                Text('Watch all'),
              ],
            ),
          ),
          SizedBox(
            height: 130,
            child: ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      height: 70,
                      width: 70,
                      child: Column(
                        children: [
                          CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                  'https://next-images.123rf.com/index/_next/image/?url=https://assets-cdn.123rf.com/index/static/assets/top-section-bg.jpeg&w=3840&q=75')),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'M.Rashid',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Divider(
            endIndent: 15,
            indent: 15,
          ),
        ],
      ),
    );
  }
}
