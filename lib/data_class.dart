import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Data extends ChangeNotifier{

  int value =0;

  void increment(){
    value ++;
    notifyListeners();

  }

}