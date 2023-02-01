import 'package:flutter/cupertino.dart';

class FavouriteItem with ChangeNotifier {
  List<int> _selectedItem = [];
  List<int> get selectedItem => _selectedItem;

  void addItem(int value) {
    _selectedItem.add(value);
    notifyListeners(); // it nofify something is changed
  }

  
  void removeitem(int value) {
    _selectedItem.remove(value);
    notifyListeners(); // it nofify something is changed
  }
}
