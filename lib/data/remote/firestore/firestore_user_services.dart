
import 'package:akucerdasortu/data/model/user_model/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';


class FireStoreUserServices {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  //final BoxStorage _boxStorage = BoxStorage();

  Future<UserModel> loginCurrentUser(String uid) async {
    // final prefs = await SharedPreferences.getInstance();
    debugPrint('uid : $uid');
   return _db.collection('user').doc(uid).get().then((value) => UserModel.fromMap(value.data()!));
     // debugPrint('login process : ${value.get('username').toString()}');

      // _loginController.username.value = value.get('username');
      // _loginController.password.value = value.get('password');
      // _loginController.uid.value = value.get('uid');
      // _loginController.nisn.value = value.get('nisn');
      //  prefs.setString('uid', value.get('uid'));
      //  prefs.setString('nisn', value.get('nisn'));
      //  prefs.setString('password', value.get('password'));
      //  prefs.setString('username', value.get('username'));
      // _boxStorage.setUserId(value.get('uid'));
      // _boxStorage.setUserNisn(value.get('nisn'));
      // _boxStorage.setUserPassword(value.get('password'));
      // _boxStorage.setUserName(value.get('username'));
    
  }

  Future<bool> updateFcmToken(String uid, String fcmtoken) async {
    Map<String, dynamic> data = {'fcmToken': fcmtoken};
    _db.collection('user').doc(uid).update(data);
    return true;
  }
}
