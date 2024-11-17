import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _swipableListIndex =
          prefs.getString('ff_swipableListIndex') ?? _swipableListIndex;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

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

  bool _timerRunning = false;
  bool get timerRunning => _timerRunning;
  set timerRunning(bool value) {
    _timerRunning = value;
  }

  String _swipableListIndex = '';
  String get swipableListIndex => _swipableListIndex;
  set swipableListIndex(String value) {
    _swipableListIndex = value;
    prefs.setString('ff_swipableListIndex', value);
  }

  List<String> _searchQuery = [];
  List<String> get searchQuery => _searchQuery;
  set searchQuery(List<String> value) {
    _searchQuery = value;
  }

  void addToSearchQuery(String value) {
    searchQuery.add(value);
  }

  void removeFromSearchQuery(String value) {
    searchQuery.remove(value);
  }

  void removeAtIndexFromSearchQuery(int index) {
    searchQuery.removeAt(index);
  }

  void updateSearchQueryAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    searchQuery[index] = updateFn(_searchQuery[index]);
  }

  void insertAtIndexInSearchQuery(int index, String value) {
    searchQuery.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
