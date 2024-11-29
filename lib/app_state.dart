import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _searchactive = false;
  bool get searchactive => _searchactive;
  set searchactive(bool value) {
    _searchactive = value;
  }

  List<bool> _searchactive2 = [];
  List<bool> get searchactive2 => _searchactive2;
  set searchactive2(List<bool> value) {
    _searchactive2 = value;
  }

  void addToSearchactive2(bool value) {
    searchactive2.add(value);
  }

  void removeFromSearchactive2(bool value) {
    searchactive2.remove(value);
  }

  void removeAtIndexFromSearchactive2(int index) {
    searchactive2.removeAt(index);
  }

  void updateSearchactive2AtIndex(
    int index,
    bool Function(bool) updateFn,
  ) {
    searchactive2[index] = updateFn(_searchactive2[index]);
  }

  void insertAtIndexInSearchactive2(int index, bool value) {
    searchactive2.insert(index, value);
  }

  String _searchQuery = '';
  String get searchQuery => _searchQuery;
  set searchQuery(String value) {
    _searchQuery = value;
  }

  List<String> _filteredPlants = [];
  List<String> get filteredPlants => _filteredPlants;
  set filteredPlants(List<String> value) {
    _filteredPlants = value;
  }

  void addToFilteredPlants(String value) {
    filteredPlants.add(value);
  }

  void removeFromFilteredPlants(String value) {
    filteredPlants.remove(value);
  }

  void removeAtIndexFromFilteredPlants(int index) {
    filteredPlants.removeAt(index);
  }

  void updateFilteredPlantsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    filteredPlants[index] = updateFn(_filteredPlants[index]);
  }

  void insertAtIndexInFilteredPlants(int index, String value) {
    filteredPlants.insert(index, value);
  }
}
