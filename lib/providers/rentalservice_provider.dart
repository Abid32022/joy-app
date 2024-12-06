import 'package:flutter/cupertino.dart';

class RentalServiceProvider extends ChangeNotifier {
  /// ---RentalServiceProvider ---///

  ///---Selected Categories onTap color changes

  int _selectedCategories = -1;

  int get selectedCategories => _selectedCategories;

  void setSelectedCategories(int index) {
    _selectedCategories = index;
    notifyListeners();
  }

  ///---TypeOfPropertyComponent onTap color changes

  int _selectedTab = -1;

  int get selectedTab => _selectedTab;

  void setSelectedTab(int index) {
    _selectedTab = index;
    notifyListeners();
  }

  ///---BedRoomComponent onTap color changes

  int _selectedRooms = -1;

  int get selectedRooms => _selectedRooms;

  void setSelectedRooms(int index) {
    _selectedRooms = index;
    notifyListeners();
  }

  ///---BedComponent onTap color changes

  int _selectedBeds = -1;

  int get selectedBeds => _selectedBeds;

  void setSelectedBeds(int index) {
    _selectedBeds = index;
    notifyListeners();
  }

  ///---BathRoomComponent onTap color changes

  int _selectedBathRooms = -1;

  int get selectedBathRooms => _selectedBathRooms;

  void setSelectedBathRooms(int index) {
    _selectedBathRooms = index;
    notifyListeners();
  }

  ///---Check1 Box Functionality

  List<bool> _checkboxValues1 = List.generate(11, (index) => false);

  List<bool> get checkboxValues1 => _checkboxValues1;

  void setSelectedCheckBox1(bool value, int index) {
    _checkboxValues1[index] = value;
    notifyListeners();
  }
  ///---Check2 Box Functionality

  List<bool> _checkboxValues2 = List.generate(11, (index) => false);

  List<bool> get checkboxValues2 => _checkboxValues2;

  void setSelectedCheckBox2(bool value, int index) {
    _checkboxValues2[index] = value;
    notifyListeners();
  }
  ///---Check3 Box Functionality

  List<bool> _checkboxValues3 = List.generate(2, (index) => false);

  List<bool> get checkboxValues3 => _checkboxValues3;

  void setSelectedCheckBox3(bool value, int index) {
    _checkboxValues3[index] = value;
    notifyListeners();
  }

  ///---Visibility Functionality
  bool isSelectFeaturesVisible = false;

  void toggleSelectFeaturesVisibility() {
    isSelectFeaturesVisible = !isSelectFeaturesVisible;
    notifyListeners();
  }

  ///---Amenities Visible Functionality

  bool _amenitiesVisible = false;

  bool get amenitiesVisible => _amenitiesVisible;

  void setAmenitiesVisible() {
    _amenitiesVisible != _amenitiesVisible;
    notifyListeners();
  }

  ///---Expansion tile visibility

  bool _isExpansionVisible = false;

  bool get isExpansionVisible => _isExpansionVisible;

  void toggleVisibility() {
    _isExpansionVisible = !_isExpansionVisible;
    notifyListeners();
  }
}
