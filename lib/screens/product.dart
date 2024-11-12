import 'package:flutter/material.dart';

class Productdeted extends StatelessWidget {
  var image;
  var title;
  var describtion;
  Productdeted({required this.image,required this.describtion,required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Container(
                    width:300,
                    height: 300,
                    child:   Image.network(image),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(width:300,child: Text(title,style: TextStyle(color: Colors.white),)),
                  ),
                  Container(width:300,child: Text(describtion,style: TextStyle(color: Colors.white),)),
                ],

              ),
            ),
          ],
        ),
      ),
    );
  }
}