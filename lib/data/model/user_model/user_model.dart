class UserModel {
  final String uid;
  final String nisn;
  final String password;
  final String username;

  UserModel(
      {required this.uid,
      required this.nisn,
      required this.password,
      required this.username,
      });

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'nisn': nisn,
      'password': password,
      'username': username,
    };
  }

  UserModel.fromMap(Map<String, dynamic> userModelMap)
      : uid = userModelMap["uid"],
        nisn = userModelMap["nisn"],
        username = userModelMap["username"],
        password = userModelMap["password"];
}