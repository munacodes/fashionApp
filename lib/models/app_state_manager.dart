import 'package:fashion_app/models/app_cache.dart';
import 'package:flutter/material.dart';
import 'modelsExport.dart';
import 'package:fashion_app/screens/screensExports.dart';

class FashionappTab {
  static const int all = 0;
  static const int apparel = 1;
  static const int dress = 2;
  static const int tShirt = 3;
  static const int bag = 4;
}

// AppStateManager mocks the various app state such as app initialization,
// app login, and onboarding.
class AppStateManager extends ChangeNotifier {
  // Checks to see if the user is logged in
  bool _loggedIn = false;

  // Records the current tab the user is on.
  int _selectedTab = FashionappTab.all;
  // Stores user state properties on platform specific file system.
  final _appCache = AppCache();

  // Property getters.
  bool get isLoggedIn => _loggedIn;

  int get getSelectedTab => _selectedTab;

  // Initializes the app
  Future<void> initializeApp() async {
    // Check if the user is logged in
    _loggedIn = await _appCache.isUserLoggedIn();
  }

  void login(String username, String password) async {
    _loggedIn = true;
    await _appCache.cacheUser();
    notifyListeners();
  }

  void goToTab(index) {
    _selectedTab = index;
    notifyListeners();
  }

  void logout() async {
    // Reset all properties once user logs out
    _loggedIn = false;

    _selectedTab = 0;

    // Reinitialize the app
    await _appCache.invalidate();
    await initializeApp();
    notifyListeners();
  }
}
