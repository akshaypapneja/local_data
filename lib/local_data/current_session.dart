
import 'base_current_session.dart';
import 'local_data.dart';

class CurrentSession extends BaseCurrentSession<LocalData> {
  static final CurrentSession _currentSession = CurrentSession._internal();

  CurrentSession(LocalData localData) : super();

  CurrentSession._internal() : super();

  @override
  void initLocalData(Map<String, dynamic> data) {
    localData = LocalData.fromJson(data);
  }

  static CurrentSession get i => _currentSession;

  @override
  Map<String, dynamic> localDataToMap() {
    return localData.toMap();
  }
}
