import 'package:flutter/material.dart';
import 'package:flutter_application_3/T-shirt-polo.dart';
import 'package:flutter_application_3/Tshirt_shop.dart';
import 'package:flutter_application_3/polo_tshirt.dart';

class TShirt extends StatefulWidget {
  const TShirt({super.key});

  @override
  State<TShirt> createState() => _TShirtState();
}

class _TShirtState extends State<TShirt> {
  List name = [
    'T-shirt Polo',
    'T-shirt Amazon',
    'T-shirt Sneakers',
    'T-shirt Tracksuilt',
    'T-shirt Guccel',
    'T-shirt Clothing',
    'Printing T-shirt',
    'Half Sleeves T-shirt'
  ];
  List image = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRylD13-T5NZ0JGJdpMKZhs5gMy5lftHuiBAw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb35B14Z7UkNzD-PDY_Ie1Twm6fCFl--cWsw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtqmHu_kgqWTIEsX1bSHea7RnTBVqNfFGYfQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrkaKXZNybCyLXGFNqIbAI1Pss75Nze460rQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvchYWFpyFmidUbc4aH3FXNKNEoVPnTsrc5g&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb35B14Z7UkNzD-PDY_Ie1Twm6fCFl--cWsw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXE_R7FrkK7CSbYYv4sYh8fDMxpMF77nqmqw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXE_R7FrkK7CSbYYv4sYh8fDMxpMF77nqmqw&s'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TshirtShop()));
            },
          ),
          title: Text('T-Shirt Shop'),
          actions: [Icon(Icons.menu)],
        ),
        body: Column(
          children: [
            Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 2,
                        crossAxisSpacing: 2),
                    itemCount: name.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            children: [
                              Container(
                                  alignment: Alignment.bottomRight,
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                    size: 10,
                                  )),
                              Image.network(
                                image[index],
                                width: 100,
                                height: 100,
                              ),
                              SizedBox(
                                width: 10,
                                height: 10,
                              ),
                              Text(name[index]),
                              Container(
                                height: 20,
                                width: 60,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => polo()));
                                  },
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Text(
                                      'Buy Now',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }))
          ],
        ));
  }
}
