import 'package:cloud_firestore/cloud_firestore.dart';

import '../../model/perpustakaan_content_model/perpustakaan_content_model.dart';

class FireStorePerpustakaanServices {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<List<PerpustakaanModel>> getPerpustakaan() {
    return _db.collection('perpustakaancontent').snapshots().map(
          (snapshot) => snapshot.docs
              .map(
                (doc) => PerpustakaanModel.fromJson(doc.data(), doc.id),
              )
              .toList(),
        );
  }
}
