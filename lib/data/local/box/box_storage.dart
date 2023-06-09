import 'package:get_storage/get_storage.dart';

class BoxStorage {
  final GetStorage _getStorage = GetStorage();

  static const _firstInstallKey = 'first_install';
  static const _userIdKey = 'user_id';
  static const _userNameKey = 'user_username';
  static const _userPasswordKey = 'user_password';
  static const _userNisnKey = 'user_nisn';
  static const _userRememberMe = 'user_remember_me';

  void setUserId(String userid) {
     _getStorage.write(_userIdKey, userid);
  }
  String getUserId() => _getStorage.read(_userIdKey) ?? '';

  void deleteUserId() => _getStorage.remove(_userIdKey);

  void setUserName(String username) {
     _getStorage.write(_userNameKey, username);
  }
  String getUserName() => _getStorage.read(_userNameKey) ?? '';

  void deleteUserName() => _getStorage.remove(_userNameKey);

  void setUserPassword(String password) {
     _getStorage.write(_userPasswordKey, password);
  }
  String getUserPassword() => _getStorage.read(_userPasswordKey)  ?? '';

  void deleteUserPassword() => _getStorage.remove(_userPasswordKey);

  void setUserNisn(String nisn) {
     _getStorage.write(_userNisnKey, nisn);
  }
  String getUserNisn() => _getStorage.read(_userNisnKey)  ?? '';

  void deleteUserNisn() => _getStorage.remove(_userNisnKey);

  void setUserRememberMe() {
     _getStorage.write(_userRememberMe, true);
  }
  bool getUserRememberMe() {
  final isRememberMe = _getStorage.read(_userRememberMe);
    if(isRememberMe != null) return true;
    return false;
  } 

  void deleteUserRememberMe() => _getStorage.remove(_userRememberMe);

  void setFirstInstall() {
     _getStorage.write(_firstInstallKey, true);
     return;
  }

  void deleteFirstInstall() => _getStorage.remove(_firstInstallKey);

  bool getFirstInstall(){
    final isFirstInstall = _getStorage.read(_firstInstallKey);
    if(isFirstInstall != null) return true;
    return false;
  }
  
  Future<void> clearCache() {
    final isClear = _getStorage.erase();
    return isClear;
  }


}