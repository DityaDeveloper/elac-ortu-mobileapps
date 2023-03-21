import 'package:akucerdasortu/data/model/home_content_promotion_carousel_model/home_content_promotion_carousel_model.dart';
import 'package:akucerdasortu/gen/assets.gen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/model/color_gradient_model/color_gradient_static_model.dart';
import '../../data/remote/firestore/firestore_promotion_services.dart';
import '../../gen/colors.gen.dart';

import 'package:carousel_slider/carousel_slider.dart';

// ignore: must_be_immutable
class PromotionContentView extends StatelessWidget {
  PromotionContentView({super.key});
  List<ColorGradientStaticModel> gradientValue = [
    const ColorGradientStaticModel(
        id: 1, value: [Color(0xff8E7CFC), Color(0xff5C41FF)]),
    const ColorGradientStaticModel(
        id: 1, value: [Color(0xffFCB97C), Color(0xff654EF3)]),
    const ColorGradientStaticModel(
        id: 1, value: [Color(0xffF988CB), Color(0xff654EF3)]),
  ];
  int currentpages = 0;
  @override
  Widget build(BuildContext context) {
    final FireStorePromotionServices fireStorePromotionContentServices =
        FireStorePromotionServices();
    return StreamBuilder(
        stream: fireStorePromotionContentServices.getPromotionContentCarousel(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return CarouselSlider.builder(
            options: CarouselOptions(
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                pauseAutoPlayInFiniteScroll: true,
                initialPage: 2,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 2),
                scrollPhysics: const BouncingScrollPhysics()),
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index, int pageViewIndex) {
              HomeContentPromotionCarouselModel promotionCarouselModel =
                  snapshot.data[index];

              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: (InkWell(
                  // onTap: () => Get.to(const ProfileView()),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 220,
                        width: Get.width,
                        child: Card(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              gradient: LinearGradient(
                                colors: gradientValue[index].value,
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        promotionCarouselModel.subtitle,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12,
                                            color: ColorName.white),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        width: Get.width * 0.9,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              promotionCarouselModel.title,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  color: ColorName.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 30.0, right: 5, left: 10),
                                        child: SizedBox(
                                          width: 100,
                                          height: 30,
                                          child: ElevatedButton(
                                              style: ButtonStyle(
                                                  foregroundColor:
                                                      MaterialStateProperty.all<
                                                          Color>(Colors.white),
                                                  backgroundColor:
                                                      MaterialStateProperty.all<
                                                          Color>(
                                                    const Color(0xffF24F2B),
                                                  ),
                                                  shape: MaterialStateProperty.all<
                                                          RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  20),
                                                          side: const BorderSide(
                                                              color: Color(0xffF24F2B))))),
                                              onPressed: () {
                                                //loginController.loginFirestoreOrtu();
                                                // loginController.loginHardcode();
                                              },
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                        promotionCarouselModel
                                                            .btnLabel
                                                            .toUpperCase(),
                                                        style: const TextStyle(
                                                            fontSize: 12)),
                                                  ],
                                                ),
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 10,
                        bottom: 0,
                        top: 50,
                        child: CachedNetworkImage(
                          imageUrl: promotionCarouselModel.image,
                          // fit: BoxFit.fitWidth,
                          // width: Get.width * 0.94,
                          height: 180, width: 150,
                          placeholder: (context, url) {
                            return Assets.image.teacherMenuLogo
                                .image(height: 180, width: 150);
                          },
                          errorWidget: (context, url, error) {
                            return Assets.image.teacherMenuLogo
                                .image(height: 180, width: 150);
                          },
                        ),
                      )
                    ],
                  ),
                )),
              );
            },
          );
        });
  }
}
