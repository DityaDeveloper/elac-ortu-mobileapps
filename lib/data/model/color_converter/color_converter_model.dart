import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';

class ColorIntConv implements JsonConverter<Color, int> {
  const ColorIntConv();
  static const Color defaultColor = Color.fromRGBO(0, 0, 0, 0);

  @override
  // ignore: unnecessary_null_comparison
  Color fromJson(int json) => json == null ? defaultColor : Color(json);
  
  @override
  int toJson(Color object) {
    // ignore: unnecessary_null_comparison
    object == null ? defaultColor : object.value;
    throw UnimplementedError();
  }

  // @override
  // int toJson(Color object) => object == null ? defaultColor : object.value;
}