import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_work_content_model.freezed.dart';
part 'home_work_content_model.g.dart';

@freezed
class HomeWorkModel with _$HomeWorkModel {
  //const HomeMenuModel._();
  const factory HomeWorkModel({
    required String id,
    required String mapel,
    required String uid,
    required String countMapel,
  }) = _HomeWorkModel;

   factory HomeWorkModel.fromJson(Map<String, dynamic> json, String id) => _$HomeWorkModelFromJson(json);
}