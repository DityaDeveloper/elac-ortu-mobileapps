import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_content_promotion_carousel_model.freezed.dart';
part 'home_content_promotion_carousel_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
abstract class HomeContentPromotionCarouselModel with _$HomeContentPromotionCarouselModel {
  //const HomeMenuModel._();
  const factory HomeContentPromotionCarouselModel({
    required String id,
    required String title,
    required String subtitle,
    required String image,
    required String btnLabel,
  }) = _HomeContentPromotionCarouselModel;

   factory HomeContentPromotionCarouselModel.fromJson(Map<String, dynamic> json, String id) => _$HomeContentPromotionCarouselModelFromJson(json);
}