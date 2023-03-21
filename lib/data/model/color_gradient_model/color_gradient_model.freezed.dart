// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'color_gradient_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ColorGradientModel _$ColorGradientModelFromJson(Map<String, dynamic> json) {
  return _ColorGradientModel.fromJson(json);
}

/// @nodoc
mixin _$ColorGradientModel {
  @ColorIntConv()
  @JsonKey()
  Color get backgroundColorRGB => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorGradientModelCopyWith<ColorGradientModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorGradientModelCopyWith<$Res> {
  factory $ColorGradientModelCopyWith(
          ColorGradientModel value, $Res Function(ColorGradientModel) then) =
      _$ColorGradientModelCopyWithImpl<$Res, ColorGradientModel>;
  @useResult
  $Res call({@ColorIntConv() @JsonKey() Color backgroundColorRGB});
}

/// @nodoc
class _$ColorGradientModelCopyWithImpl<$Res, $Val extends ColorGradientModel>
    implements $ColorGradientModelCopyWith<$Res> {
  _$ColorGradientModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColorRGB = null,
  }) {
    return _then(_value.copyWith(
      backgroundColorRGB: null == backgroundColorRGB
          ? _value.backgroundColorRGB
          : backgroundColorRGB // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ColorGradientModelCopyWith<$Res>
    implements $ColorGradientModelCopyWith<$Res> {
  factory _$$_ColorGradientModelCopyWith(_$_ColorGradientModel value,
          $Res Function(_$_ColorGradientModel) then) =
      __$$_ColorGradientModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@ColorIntConv() @JsonKey() Color backgroundColorRGB});
}

/// @nodoc
class __$$_ColorGradientModelCopyWithImpl<$Res>
    extends _$ColorGradientModelCopyWithImpl<$Res, _$_ColorGradientModel>
    implements _$$_ColorGradientModelCopyWith<$Res> {
  __$$_ColorGradientModelCopyWithImpl(
      _$_ColorGradientModel _value, $Res Function(_$_ColorGradientModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColorRGB = null,
  }) {
    return _then(_$_ColorGradientModel(
      backgroundColorRGB: null == backgroundColorRGB
          ? _value.backgroundColorRGB
          : backgroundColorRGB // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ColorGradientModel implements _ColorGradientModel {
  const _$_ColorGradientModel(
      {@ColorIntConv()
      @JsonKey()
          this.backgroundColorRGB = ColorIntConv.defaultColor});

  factory _$_ColorGradientModel.fromJson(Map<String, dynamic> json) =>
      _$$_ColorGradientModelFromJson(json);

  @override
  @ColorIntConv()
  @JsonKey()
  final Color backgroundColorRGB;

  @override
  String toString() {
    return 'ColorGradientModel(backgroundColorRGB: $backgroundColorRGB)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ColorGradientModel &&
            (identical(other.backgroundColorRGB, backgroundColorRGB) ||
                other.backgroundColorRGB == backgroundColorRGB));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, backgroundColorRGB);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ColorGradientModelCopyWith<_$_ColorGradientModel> get copyWith =>
      __$$_ColorGradientModelCopyWithImpl<_$_ColorGradientModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ColorGradientModelToJson(
      this,
    );
  }
}

abstract class _ColorGradientModel implements ColorGradientModel {
  const factory _ColorGradientModel(
          {@ColorIntConv() @JsonKey() final Color backgroundColorRGB}) =
      _$_ColorGradientModel;

  factory _ColorGradientModel.fromJson(Map<String, dynamic> json) =
      _$_ColorGradientModel.fromJson;

  @override
  @ColorIntConv()
  @JsonKey()
  Color get backgroundColorRGB;
  @override
  @JsonKey(ignore: true)
  _$$_ColorGradientModelCopyWith<_$_ColorGradientModel> get copyWith =>
      throw _privateConstructorUsedError;
}
