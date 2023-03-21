import 'package:akucerdasortu/data/local/box/box_storage.dart';
import 'package:akucerdasortu/data/model/attendance_model/attendance_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class FireStoreAttendanceServices {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final BoxStorage _boxStorage = BoxStorage();

  Stream<List<AttendanceCarouselModel>> getAttendance() {
    String uid = _boxStorage.getUserId();
    var timestamp = 1672813244680;
    var date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    debugPrint('date => $uid - $date');

    return _db.collection('attendance').where('uid', isEqualTo: 'uid').snapshots().map(
          (snapshot) => snapshot.docs
              .map(
                (doc) => AttendanceCarouselModel.fromJson(doc.data(), doc.id),
              )
              .toList(),
        );
  }
}
