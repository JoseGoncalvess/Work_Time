import 'package:shared_preferences/shared_preferences.dart';

class LocalRepository {
  static LocalRepository? _instace;
  static SharedPreferencesAsync? _pref;
  LocalRepository._();

  Future<SharedPreferencesAsync> getINstanceShared() async {
    return SharedPreferencesAsync();
  }

  static LocalRepository get instance => _instace ?? LocalRepository._();
  SharedPreferencesAsync get prefs {
    return _pref ?? SharedPreferencesAsync();
  }
}
