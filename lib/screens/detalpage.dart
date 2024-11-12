import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/productprovider.dart';



class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var p=Provider.of<providervalidation>(context);
    p.fech();
    return Scaffold(
      appBar: AppBar(
        title: Text("الحاجة"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemCount: p.?.data.length,
        itemBuilder: (context, index) {
          return GestureDetector(child: Item(image: p.data?.data[index]["image"]),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Productdet(image: p.data?.data[index]["image"], des: p.data?.data[index]["name"], title: p.data?.data[index]["description"])));

          },);
        },

      ),


    );
  }
}