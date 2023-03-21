import 'package:akucerdasortu/data/model/home_content_promotion_carousel_model/home_content_promotion_carousel_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FireStorePromotionServices {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<List<HomeContentPromotionCarouselModel>> getPromotionContentCarousel() {
    return _db.collection('promotioncontent').snapshots().map(
          (snapshot) => snapshot.docs
              .map(
                (doc) => HomeContentPromotionCarouselModel.fromJson(doc.data(), doc.id),
              )
              .toList(),
        );
  }
}
