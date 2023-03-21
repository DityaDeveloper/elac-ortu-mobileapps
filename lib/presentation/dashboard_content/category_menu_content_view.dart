import 'package:akucerdasortu/data/model/category_menu_model/category_menu_content_model.dart';
import 'package:akucerdasortu/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryMenuContentView extends StatefulWidget {
  const CategoryMenuContentView({super.key});

  @override
  State<CategoryMenuContentView> createState() =>
      _CategoryMenuContentViewState();
}

class _CategoryMenuContentViewState extends State<CategoryMenuContentView> {
  List<CategoryMenuModel> icondata = [
    CategoryMenuModel(
      id: 1,
      menuAssets: Assets.image.menuAbsen.image(height: 50, width: 50),
      label: 'Absen',
    ),
    CategoryMenuModel(
      id: 2,
      menuAssets: Assets.image.menuAbsen.image(height: 50, width: 50),
      label: 'Tugas',
    ),
    CategoryMenuModel(
      id: 3,
      menuAssets: Assets.image.menuAbsen.image(height: 50, width: 50),
      label: 'Kuis',
    ),
    CategoryMenuModel(
      id: 4,
      menuAssets: Assets.image.menuMapel.image(height: 50, width: 50),
      label: 'Mata Pelajaran',
    ),
    CategoryMenuModel(
      id: 5,
      menuAssets: Assets.image.menuNilai.image(height: 50, width: 50),
      label: 'Nilai',
    ),
    CategoryMenuModel(
      id: 6,
      menuAssets: Assets.image.menuGuru.image(height: 50, width: 50),
      label: 'Guru',
    ),
    CategoryMenuModel(
      id: 7,
      menuAssets: Assets.image.menuAdministrasi.image(height: 50, width: 50),
      label: 'Administrasi',
    ),
    CategoryMenuModel(
      id: 8,
      menuAssets: Assets.image.menuPerpustakaan.image(height: 50, width: 50),
      label: 'Perpustakaan',
    ),
    CategoryMenuModel(
      id: 9,
      menuAssets: Assets.image.menuTidakAbsen.image(height: 50, width: 50),
      label: 'Absen Tidak Masuk',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
            child: Row(
              children: const [
                Text(
                  'Kategori',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: LinearGradient(
                  colors: [
                    const Color(0xffCDD8FF),
                    const Color(0xffF67676).withOpacity(0.2),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              height: 345,
              width: Get.width * 0.9,
              child: GridView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1),
                  children: <Widget>[
                    GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(20),
                      children: List.generate(icondata.length, (index) {
                        return SizedBox(
                          child: Card(
                            color: Colors.transparent,
                            elevation: 0,
                            child: Center(
                                child: SizedBox(
                              height: 125,
                              child: Column(
                                children: [
                                  icondata[index].menuAssets,
                                  SizedBox(child: Text(icondata[index].label, textAlign: TextAlign.center,)),
                                ],
                              ),
                            )),
                          ),
                        );
                      }),
                    ),
                  ])),
        ],
      ),
    );
  }
}
