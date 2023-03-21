import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/model/perpustakaan_content_model/perpustakaan_content_model.dart';
import '../../data/remote/firestore/firestore_perpustakaan_services.dart';
import '../../gen/assets.gen.dart';

class PerpustakaanContentView extends StatelessWidget {
  const PerpustakaanContentView({super.key});

  @override
  Widget build(BuildContext context) {
    final FireStorePerpustakaanServices fireStoreHomeworkServices =
        FireStorePerpustakaanServices();
    return SizedBox(
        width: Get.width,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0, bottom: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Perpustakaan (Rilis Buku Terbaru)',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
              padding:
                  const EdgeInsets.only(left: 24.0, right: 12.0, bottom: 30),
              child: StreamBuilder(
                // Reading Items form our Database Using the StreamBuilder widget
                stream: fireStoreHomeworkServices.getPerpustakaan(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  //listItem = documentSnapshot['media'];
                  return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: GridView.builder(
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemCount: snapshot.data.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 2.0,
                            mainAxisSpacing: 2.0,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            PerpustakaanModel perpustakaanModel =
                                snapshot.data[index];
                            return GestureDetector(
                              onTap: () => {},
                              child: Card(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                                      child: CachedNetworkImage(
                                        imageUrl: perpustakaanModel.image,
                                       
                                        fit: BoxFit.fill,
                                        placeholder: (context, url) {
                                          return Assets.image.bookLoginLogo
                                              .image(height: 180, width: 150);
                                        },
                                        errorWidget: (context, url, error) {
                                          return Assets.image.bookLoginLogo
                                              .image(height: 180, width: 150);
                                        },
                                      ),
                                    ),
                                    Text(
                                      perpustakaanModel.title,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }));
                },
              ))
        ]));
  }
}
