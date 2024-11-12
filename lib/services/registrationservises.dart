
import 'package:dio/dio.dart';

import '../Models/productpage.dart';
class rigstrationservices
{
  static Dio dio=Dio();
  static Future<void> signup(name,phone,email,password)async
  {
    var respons=  await dio.post("https://student.valuxapps.com/api/register",
        data: {
          "name":name,
          "phone":phone,
          "email":email,
          "password":password
        }
    );
    if(respons.statusCode==200)
    {
      print(respons.data);
    }
  }
  static Future<Product> login(email,password)async
  {
    var respons=  await dio.post("https://student.valuxapps.com/api/login",
        data: {
          "email":email,
          "password":password
        }
    );
    if(respons.statusCode==200)
    {
      print(respons.data);
    }
    return Product.fromJson(respons.data);
  }
}