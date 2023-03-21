// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'color_gradient_static_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ColorGradientStaticModel {
  int get id => throw _privateConstructorUsedError;
  List<Color> get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ColorGradientStaticModelCopyWith<ColorGradientStaticModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorGradientStaticModelCopyWith<$Res> {
  factory $ColorGradientStaticModelCopyWith(ColorGradientStaticModel value,
          $Res Function(ColorGradientStaticModel) then) =
      _$ColorGradientStaticModelCopyWithImpl<$Res, ColorGradientStaticModel>;
  @useResult
  $Res call({int id, List<Color> value});
}

/// @nodoc
class _$ColorGradientStaticModelCopyWithImpl<$Res,
        $Val extends ColorGradientStaticModel>
    implements $ColorGradientStaticModelCopyWith<$Res> {
  _$ColorGradientStaticModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as List<Color>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ColorGradientStaticModelCopyWith<$Res>
    implements $ColorGradientStaticModelCopyWith<$Res> {
  factory _$$_ColorGradientStaticModelCopyWith(
          _$_ColorGradientStaticModel value,
          $Res Function(_$_ColorGradientStaticModel) then) =
      __$$_ColorGradientStaticModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<Color> value});
}

/// @nodoc
class __$$_ColorGradientStaticModelCopyWithImpl<$Res>
    extends _$ColorGradientStaticModelCopyWithImpl<$Res,
        _$_ColorGradientStaticModel>
    implements _$$_ColorGradientStaticModelCopyWith<$Res> {
  __$$_ColorGradientStaticModelCopyWithImpl(_$_ColorGradientStaticModel _value,
      $Res Function(_$_ColorGradientStaticModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_$_ColorGradientStaticModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as List<Color>,
    ));
  }
}

/// @nodoc

class _$_ColorGradientStaticModel implements _ColorGradientStaticModel {
  const _$_ColorGradientStaticModel(
      {required this.id, required final List<Color> value})
      : _value = value;

  @override
  final int id;
  final List<Color> _value;
  @override
  List<Color> get value {
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_value);
  }

  @override
  String toString() {
    return 'ColorGradientStaticModel(id: $id, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ColorGradientStaticModel &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ColorGradientStaticModelCopyWith<_$_ColorGradientStaticModel>
      get copyWith => __$$_ColorGradientStaticModelCopyWithImpl<
          _$_ColorGradientStaticModel>(this, _$identity);
}

abstract class _ColorGradientStaticModel implements ColorGradientStaticModel {
  const factory _ColorGradientStaticModel(
      {required final int id,
      required final List<Color> value}) = _$_ColorGradientStaticModel;

  @override
  int get id;
  @override
  List<Color> get value;
  @override
  @JsonKey(ignore: true)
  _$$_ColorGradientStaticModelCopyWith<_$_ColorGradientStaticModel>
      get copyWith => throw _privateConstructorUsedError;
}
