
import 'package:flutter/material.dart';

class UiProvider extends ChangeNotifier{

  int _indexSelected = 0;

  int get selectedMenu{
    return _indexSelected;
  }

  set selectedOption(int newSelected){
    this._indexSelected = newSelected;
    notifyListeners();
  }

}