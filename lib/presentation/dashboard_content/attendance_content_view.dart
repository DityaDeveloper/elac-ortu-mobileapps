import 'package:akucerdasortu/data/model/attendance_model/attendance_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../data/model/color_gradient_model/color_gradient_static_model.dart';
import '../../data/remote/firestore/firebase_attandance_services.dart';
import '../../gen/colors.gen.dart';

// ignore: must_be_immutable
class AttendanceContentView extends StatelessWidget {
  AttendanceContentView({super.key});
  List<ColorGradientStaticModel> gradientValue = [
    const ColorGradientStaticModel(
        id: 1, value: [Color(0xff3ea7f3), Color(0xffB2B2B2)]),
    const ColorGradientStaticModel(
        id: 1, value: [Color(0xffF37A7A), Color(0xffB8B8B8)]),
  ];
  int currentpages = 0;
  int indexlength = 0;
  @override
  Widget build(BuildContext context) {
    final FireStoreAttendanceServices fireStoreAttendanceServices =
        FireStoreAttendanceServices();
    return StreamBuilder(
        stream: fireStoreAttendanceServices.getAttendance(),
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
                itemCount: snapshot.data == null ? 0 : snapshot.data.length,
                itemBuilder:
                    (BuildContext context, int index, int pageViewIndex) {
                  debugPrint('datas => ${snapshot.data}');
                  AttendanceCarouselModel attendanceCarouselModel =
                      snapshot.data[index];
                  debugPrint(attendanceCarouselModel.namaLengkap);
                  DateTime timestamp = attendanceCarouselModel.createAt;
                  var days = DateFormat('EEEE').format(timestamp);
                  var dates = DateFormat('dd-MM-yyyy').format(timestamp);
                  //var times = DateFormat('hh:mm').format(timestamp);

                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: (InkWell(
                      // onTap: () => Get.to(const ProfileView()),
                      child: SizedBox(
                        height: 90,
                        width: Get.width,
                        child: Card(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: LinearGradient(
                                colors: gradientValue[index].value,
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    attendanceCarouselModel.statusAbsen,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: ColorName.blackgrey),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            days,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                                color: ColorName.blackgrey),
                                          ),
                                          SizedBox(
                                            width: Get.width * 0.8,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  dates,
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12,
                                                      color:
                                                          ColorName.blackgrey),
                                                ),
                                                Text(
                                                  attendanceCarouselModel
                                                      .statusAbsen,
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 12,
                                                      color: Colors.green),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )),
                  );
                });
          }
        );
  }
}
