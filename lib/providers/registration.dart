
import 'package:flutter/cupertino.dart';

import '../Models/productpage.dart';
import '../services/productservices.dart';

class ProductProvider extends ChangeNotifier {
  Product? productsProvid;
  Future<void> get() async {
    productsProvid = await ProductServices.getData();
    notifyListeners();
  }
}

