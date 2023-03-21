// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'color_gradient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ColorGradientModel _$$_ColorGradientModelFromJson(
        Map<String, dynamic> json) =>
    _$_ColorGradientModel(
      backgroundColorRGB: json['backgroundColorRGB'] == null
          ? ColorIntConv.defaultColor
          : const ColorIntConv().fromJson(json['backgroundColorRGB'] as int),
    );

Map<String, dynamic> _$$_ColorGradientModelToJson(
        _$_ColorGradientModel instance) =>
    <String, dynamic>{
      'backgroundColorRGB':
          const ColorIntConv().toJson(instance.backgroundColorRGB),
    };
