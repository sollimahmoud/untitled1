import 'package:dio/dio.dart';

import '../Models/productpage.dart';

class ProductServices {
  static Dio dio = Dio();

  static Future<Product> getData() async {
    var response = await dio.get('https://student.valuxapps.com/api/home');
    return Product.fromJson(response.data);
  }
}
