import 'package:shared_preferences/shared_preferences.dart';

class PreferenceHelper {
  static const int dummyDataLoaded = 10;
  static const int dummyDataVersion = 11;

  static PreferenceHelper _helper;
  static SharedPreferences prefs;

  PreferenceHelper();
  PreferenceHelper.init(SharedPreferences pref) {
    prefs = pref;
    _helper = this;
  }

  static PreferenceHelper get i {
    if (_helper == null) {
      NullThrownError();
    }
    return _helper;
  }

  bool readBool(int key) {
    return prefs.getBool("$key") ?? false;
  }

  int readInt(int key) {
    return prefs.getInt("$key") ?? 0;
  }

  void putBool(int key, bool value) {
    prefs.setBool("$key", value);
  }

  void putInt(int key, int value) {
    prefs.setInt("$key", value);
  }

  void putString(int key, String value) {
    prefs.setString("$key", value);
  }

  String readString(int key) {
    return prefs.getString("$key") ?? "";
  }
  void clearData(int key){
    prefs.remove("$key");
  }
}
