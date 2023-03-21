import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/model/home_work_model/home_work_content_model.dart';
import '../../data/remote/firestore/firestore_homework_services.dart';

class HomeWorkContentView extends StatelessWidget {
  const HomeWorkContentView({super.key});

  @override
  Widget build(BuildContext context) {
    final FireStoreHomeworkServices fireStoreHomeworkServices =
        FireStoreHomeworkServices();
    return SizedBox(
      width: Get.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0, bottom: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Tugas belum selesai',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 12.0, bottom: 30),
            child: StreamBuilder(
              // Reading Items form our Database Using the StreamBuilder widget
              stream: fireStoreHomeworkServices.getHomework(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return ListView.builder(
                  // itemExtent: snapshot.data?.docs.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, int index) {
                    HomeWorkModel homework = snapshot.data[index];
                    debugPrint('datass => ${snapshot.data[index]}');
                    //listItem = documentSnapshot['media'];
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            homework.mapel,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            '${homework.countMapel} Tugas',
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.red),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
