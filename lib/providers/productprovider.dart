
import 'package:flutter/cupertino.dart';

import '../Models/productpage.dart';
import '../screens/signup.dart';

import '../services/productservices.dart';

class providervalidation extends ChangeNotifier
{

  Product? provid;
  Future<void> signup(name,phone,email,password)async
  {
    await ProductServices.signup(name,phone,email,password);
    notifyListeners();
  }
  Future<void> login(email,password)async
  {
    provid= await ProductServices.login(email, password);
    print("provider done");
    notifyListeners();
  }

}