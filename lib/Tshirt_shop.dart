import 'package:flutter/material.dart';
import 'package:flutter_application_3/T_shirt.dart';

class TshirtShop extends StatefulWidget {
  const TshirtShop({super.key});

  @override
  State<TshirtShop> createState() => _TshirtShopState();
}

class _TshirtShopState extends State<TshirtShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Icon(
          Icons.star_outlined,
          color: Colors.yellow,
          size: 80,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 35, left: 15, right: 15, bottom: 35),
            child: Container(
              height: 30,
              width: 400,
              decoration: BoxDecoration(border: Border.all()),
              child: Text(
                'Welcome To My Online Shop',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Image.network(
            'https://d3jmn01ri1fzgl.cloudfront.net/photoadking/webp_thumbnail/t-shirt-sale-flyer-template-5vf4r0e0a414a3.webp',
            width: 300,
            height: 300,
          ),
          SizedBox(
            height: 100,
            width: 100,
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                    top: 20,
                    left: 120,
                  )),
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.add,
                      size: 50,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.lightBlueAccent),
                    alignment: Alignment.topRight,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.done,
                      size: 40,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.lightBlueAccent),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  height: 30,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12)),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => TShirt()));
                      },
                      child: Text(
                        'Buy Now',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ))),
            ],
          )
        ],
      ),
    );
  }
}
