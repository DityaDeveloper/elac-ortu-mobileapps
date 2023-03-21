import 'package:akucerdasortu/data/local/box/box_storage.dart';
import 'package:akucerdasortu/data/model/home_work_model/home_work_content_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreHomeworkServices {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final BoxStorage _boxStorage = BoxStorage();

  Stream<List<HomeWorkModel>> getHomework() {
    String uid = _boxStorage.getUserId();
    return _db.collection('homework').where('uid', isEqualTo: uid).snapshots().map(
          (snapshot) => snapshot.docs
              .map(
                (doc) => HomeWorkModel.fromJson(doc.data(), doc.id),
              )
              .toList(),
        );
  }
}
