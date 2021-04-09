import 'dart:convert';

import 'package:local_data/local_data/preference_helper.dart';


abstract class BaseCurrentSession<T> {
  T localData;
  int _keyLocalData = 99;

  BaseCurrentSession() {
    String data = PreferenceHelper.i.readString(_keyLocalData);
    if (data.isEmpty || data == null) {
      initLocalData(null);
    } else {
      initLocalData(json.decode(data));
    }
  }

  void initLocalData(Map<String, dynamic> data);

  void saveDataLocally() {
    final Map<String, dynamic> data = localDataToMap();
    PreferenceHelper.i.putString(_keyLocalData, json.encode(data));
  }

  Map<String, dynamic> localDataToMap();

  void clearLocalData() {
    PreferenceHelper.i.clearData(_keyLocalData);
    // initLocalData(null);
    // saveDataLocally();
  }

  void logoutUser() {
//    CurrentSession.i.localData.userData = null;
//    CurrentSession.i.localData.userLoginProgress =
//        UserLoginProgress.userUnauthenticated;
//    CurrentSession.i.saveDataLocally();
//    Future.delayed(Duration(milliseconds: 200)).then((_) {
//      Navigator.of(context)
//          .pushNamedAndRemoveUntil(AppRoutePath.initial, (route) => false);
//    });
  }
}
