import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../color_converter/color_converter_model.dart';

part 'color_gradient_model.freezed.dart';
part 'color_gradient_model.g.dart';

@freezed
class ColorGradientModel with _$ColorGradientModel {
  //const HomeMenuModel._();
  const factory ColorGradientModel({
    @ColorIntConv()
    @Default(ColorIntConv.defaultColor)
    // ignore: invalid_annotation_target
    @JsonKey()
        Color backgroundColorRGB,
  }) = _ColorGradientModel;

    factory ColorGradientModel.fromJson(Map<String, dynamic> json) => _$ColorGradientModelFromJson(json);
}