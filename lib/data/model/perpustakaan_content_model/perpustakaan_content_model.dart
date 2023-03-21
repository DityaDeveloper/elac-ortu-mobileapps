import 'package:freezed_annotation/freezed_annotation.dart';

part 'perpustakaan_content_model.freezed.dart';
part 'perpustakaan_content_model.g.dart';

@freezed
class PerpustakaanModel with _$PerpustakaanModel {
  //const HomeMenuModel._();
  const factory PerpustakaanModel({
    required String id,
    required String title,
    required String subtitle,
    required String image,
  }) = _PerpustakaanModel;

   factory PerpustakaanModel.fromJson(Map<String, dynamic> json, String id) => _$PerpustakaanModelFromJson(json);
}