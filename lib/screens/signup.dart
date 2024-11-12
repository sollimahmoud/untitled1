import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/screens/loginpage.dart';
import 'package:provider/provider.dart';

import '../providers/signupprovider.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name=TextEditingController();
    TextEditingController email=TextEditingController();
    TextEditingController password=TextEditingController();
    TextEditingController phone=TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("signup"),leading: Icon(Icons.menu),centerTitle:true ,

      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container (

              child: Consumer(builder: (context,value,child){
                return Column(
                  children: [
                    TextFormField(decoration: InputDecoration(labelText: "name",border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                    ),
                      controller: name,
                    ),SizedBox(height: 10.0,),
                    TextFormField(decoration: InputDecoration(labelText: "email",border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                    ),
                      controller: email,
                    ),SizedBox(height: 5.0,),
                    TextFormField(decoration: InputDecoration(labelText: "phone",border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                    ),controller: phone,
                    ),SizedBox(height: 4.0,),
                    TextFormField(decoration: InputDecoration(labelText: "password",border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                    ),controller: password,
                    ),SizedBox(height: 4.0,),
                    SizedBox(height: 20,),
                    OutlinedButton(
                      onPressed:()async{
                        bool signup=await Provider.of<SignUpProvider>(context,listen: false).signup(name, phone, email, password);
                        if(signup){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage()));
                        }
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("signup")));
                      },
                      child: Text("signup"),



                    ),
                    Text("Alrady i have an acount?login"),
                  ],

                );
              }
              ),
            ),
          ],
        ),
      ),
    );
  }
}