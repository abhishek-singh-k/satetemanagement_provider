import 'package:flutter/material.dart';

class FavouriteProvider with ChangeNotifier{
  List<int> _selectedItem=[];

  List<int> get selecteditem=>_selectedItem;
  void additem(int value)
  {
    _selectedItem.add(value);
    notifyListeners();
  }
  void remove(int value)
  {
    _selectedItem.remove(value);
    notifyListeners();
  }
}