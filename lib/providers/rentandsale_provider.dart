import 'package:flutter/material.dart';

class SaleAndRentProvider with ChangeNotifier {
  String selectedType = '';

  void setSelectedType(String type) {
    selectedType = type;
    notifyListeners();
  }

  int _currentIndex = -1;

  int get currIndex => _currentIndex;

  void selectedIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  ///Tab bar Provider of Residents, Plot and Commercials
  int _selectedTabIndex = 0;

  int get selectedTabIndex => _selectedTabIndex;

  void setSelectedTabIndex(int index) {
    _selectedTabIndex = index;
    notifyListeners();
  }

  int _selectedIndex = -1;
  bool _expanded = false;

  int get selectIndex => _selectedIndex;

  bool get expanded => _expanded;

  void setSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  void toggleExpanded() {
    _expanded = !_expanded;
    notifyListeners();
  }

  ///BedRoom Numbers Tab Provider

  int _currentNumberIndex = -1;

  int get currentNumberIndex => _currentNumberIndex;

  void setNumberIndex(int index) {
    _currentNumberIndex = index;
    notifyListeners();
  }

  ///BathRoom Numbers Tab Provider
  int _currentNumberIndex1 = -1;

  int get currentNumberIndex1 => _currentNumberIndex1;

  void setNumberIndex1(int index) {
    _currentNumberIndex1 = index;
    notifyListeners();
  }

  ///Function for expansion tile opening
  bool _isExpanded = false;

  bool get isExpanded => _isExpanded;

  setExpanded(bool value) {
    _isExpanded = value;
    notifyListeners();
  }

  ///more filter visibility
  bool isSelectFeaturesVisible = false;
  bool isMoreFilterButtonVisible = true;

  void toggleSelectFeaturesVisibility() {
    isSelectFeaturesVisible = !isSelectFeaturesVisible;
    isMoreFilterButtonVisible = !isSelectFeaturesVisible;
    notifyListeners();
  }

  ///Opening Specific expansion tile
  int _selectedExpansionIndex = -1;

  int get selectedExpansionIndex => _selectedExpansionIndex;

  void setSelectedExpansionIndex(int index) {
    _selectedExpansionIndex = index;
    notifyListeners();
  }

  ///expansionHeaderData onTap Color changes
  int _selectedIndexData = 0;

  int get selectedIndexData => _selectedIndexData;

  void setSelectedData(int index) {
    _selectedIndexData = index;
    notifyListeners();
  }
}
