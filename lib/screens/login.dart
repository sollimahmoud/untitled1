

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email=TextEditingController();
    TextEditingController password=TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("login"),centerTitle: true,leading: Icon(Icons.menu),),
      body:Consumer(builder: (context,value,child){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [

              CircleAvatar(maxRadius: 70,),
              Container(

                child: Padding(padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      TextFormField(decoration: InputDecoration(labelText: "email",
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                      ),
                        controller: email,
                      ),SizedBox(height: 10,),
                      TextFormField(decoration: InputDecoration(labelText:"password" ,border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                      ),
                        controller: password,
                      ),

                      SizedBox(height: 20,),
                      OutlinedButton(
                        onPressed:()async{
                          bool login=await Provider.of<LoginProvider>(context,listen: false).login(email.text,password.text);
                          if(login){
                            Navigator.push(context, MaterialPageRoute(builder:(context)=>signup()));
                          }
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("error")));
                        },
                        child: Text("login"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }
      ) ,
    );
  }
}