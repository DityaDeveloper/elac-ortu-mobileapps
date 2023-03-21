// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_menu_content_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryMenuModel {
  int get id => throw _privateConstructorUsedError;
  Widget get menuAssets => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryMenuModelCopyWith<CategoryMenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryMenuModelCopyWith<$Res> {
  factory $CategoryMenuModelCopyWith(
          CategoryMenuModel value, $Res Function(CategoryMenuModel) then) =
      _$CategoryMenuModelCopyWithImpl<$Res, CategoryMenuModel>;
  @useResult
  $Res call({int id, Widget menuAssets, String label});
}

/// @nodoc
class _$CategoryMenuModelCopyWithImpl<$Res, $Val extends CategoryMenuModel>
    implements $CategoryMenuModelCopyWith<$Res> {
  _$CategoryMenuModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? menuAssets = null,
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      menuAssets: null == menuAssets
          ? _value.menuAssets
          : menuAssets // ignore: cast_nullable_to_non_nullable
              as Widget,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryMenuModelCopyWith<$Res>
    implements $CategoryMenuModelCopyWith<$Res> {
  factory _$$_CategoryMenuModelCopyWith(_$_CategoryMenuModel value,
          $Res Function(_$_CategoryMenuModel) then) =
      __$$_CategoryMenuModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, Widget menuAssets, String label});
}

/// @nodoc
class __$$_CategoryMenuModelCopyWithImpl<$Res>
    extends _$CategoryMenuModelCopyWithImpl<$Res, _$_CategoryMenuModel>
    implements _$$_CategoryMenuModelCopyWith<$Res> {
  __$$_CategoryMenuModelCopyWithImpl(
      _$_CategoryMenuModel _value, $Res Function(_$_CategoryMenuModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? menuAssets = null,
    Object? label = null,
  }) {
    return _then(_$_CategoryMenuModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      menuAssets: null == menuAssets
          ? _value.menuAssets
          : menuAssets // ignore: cast_nullable_to_non_nullable
              as Widget,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CategoryMenuModel implements _CategoryMenuModel {
  const _$_CategoryMenuModel(
      {required this.id, required this.menuAssets, required this.label});

  @override
  final int id;
  @override
  final Widget menuAssets;
  @override
  final String label;

  @override
  String toString() {
    return 'CategoryMenuModel(id: $id, menuAssets: $menuAssets, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryMenuModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.menuAssets, menuAssets) ||
                other.menuAssets == menuAssets) &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, menuAssets, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryMenuModelCopyWith<_$_CategoryMenuModel> get copyWith =>
      __$$_CategoryMenuModelCopyWithImpl<_$_CategoryMenuModel>(
          this, _$identity);
}

abstract class _CategoryMenuModel implements CategoryMenuModel {
  const factory _CategoryMenuModel(
      {required final int id,
      required final Widget menuAssets,
      required final String label}) = _$_CategoryMenuModel;

  @override
  int get id;
  @override
  Widget get menuAssets;
  @override
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryMenuModelCopyWith<_$_CategoryMenuModel> get copyWith =>
      throw _privateConstructorUsedError;
}
