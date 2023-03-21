// ignore: duplicate_ignore
// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names, duplicate_ignore

part of 'attendance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_AttendanceCarouselModel _$$_AttendanceCarouselModelFromJson(
        Map<String, dynamic> json) =>
    _$_AttendanceCarouselModel(
      id: json['id'] as String,
      uid: json['uid'] as String,
      day: json['day'] as int,
      month: json['month'] as int,
      year: json['year'] as int,
      isattend: json['isattend'] as bool,
      statusAbsen: json['statusAbsen'] as String,
      namaLengkap: json['namaLengkap'] as String,
      createAt: DateTime.parse(json['createAt'] as String),
    );

Map<String, dynamic> _$$_AttendanceCarouselModelToJson(
        _$_AttendanceCarouselModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'day': instance.day,
      'month': instance.month,
      'year': instance.year,
      'isattend': instance.isattend,
      'statusAbsen': instance.statusAbsen,
      'namaLengkap': instance.namaLengkap,
      'createAt': instance.createAt.toIso8601String(),
    };
