import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_gradient_static_model.freezed.dart';

@freezed
class ColorGradientStaticModel with _$ColorGradientStaticModel {
  //const HomeMenuModel._();
  const factory ColorGradientStaticModel({
    required int id,
    required List<Color> value,
  }) = _ColorGradientStaticModel;
}