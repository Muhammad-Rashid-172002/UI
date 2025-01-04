import 'package:flutter/material.dart';

class list_view extends StatefulWidget {
  const list_view({super.key});

  @override
  State<list_view> createState() => _list_viewState();
}

class _list_viewState extends State<list_view> {
  List color = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white
  ];
  List name = [
    'Palak Paneer',
    'Jeera Rice',
    'Butter Nan',
    'Gulabjam',
    'Aloo Gosht',
    'Chicken Karahe',
    'kabuli Pulao'
  ];
  List images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9LEeJ0FgIecAVxyRkkcXKUnd6X1b4pSjENQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsVSyNS4VwcDckFA7cje8moojoHibOMQutsQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRutOe50Tr1aJ-S-ntsz041TRMmi7zqS6nq6Q&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThJCVp8hA7z5pchhpx8DllskCiZjrWswIBtw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTVpLJzHz1o3y6mHwJ0xqR9cVNdeNReLYIcQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRlk4jdWDNCitbx7gvu_rGFK7f_jwbk1n1WQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKe2vsovoodzRAP-kBoDukO-P2W1frjW9DUw&s'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(225, 202, 19, 19),
        title: Text('My Recipes'),
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          Expanded(
            child: ListView.builder(
                itemCount: color.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      color: color[index],
                      child: Row(
                        children: [
                          Image.network(
                            images[index],
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            name[index],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
