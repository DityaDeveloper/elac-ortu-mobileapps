import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_menu_content_model.freezed.dart';

@freezed
class CategoryMenuModel with _$CategoryMenuModel {
  //const HomeMenuModel._();
  const factory CategoryMenuModel({
    required int id,
    required Widget menuAssets,
    required String label,
  }) = _CategoryMenuModel;
}