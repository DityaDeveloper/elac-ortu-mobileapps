import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_model.freezed.dart';
part 'attendance_model.g.dart';

@freezed
class AttendanceCarouselModel with _$AttendanceCarouselModel {
  //const HomeMenuModel._();
  const factory AttendanceCarouselModel({
    required String id,
    required String uid,
    required int day,
    required int month,
    required int year,
    required bool isattend,
    required String statusAbsen,
    required String namaLengkap,
    required DateTime createAt,
  }) = _AttendanceCarouselModel;

   factory AttendanceCarouselModel.fromJson(Map<String, dynamic> json, String id) => _$AttendanceCarouselModelFromJson(json);
}