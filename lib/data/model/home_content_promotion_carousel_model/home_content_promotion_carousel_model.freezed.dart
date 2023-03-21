// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_content_promotion_carousel_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeContentPromotionCarouselModel _$HomeContentPromotionCarouselModelFromJson(
    Map<String, dynamic> json) {
  return _HomeContentPromotionCarouselModel.fromJson(json);
}

/// @nodoc
mixin _$HomeContentPromotionCarouselModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get btnLabel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeContentPromotionCarouselModelCopyWith<HomeContentPromotionCarouselModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeContentPromotionCarouselModelCopyWith<$Res> {
  factory $HomeContentPromotionCarouselModelCopyWith(
          HomeContentPromotionCarouselModel value,
          $Res Function(HomeContentPromotionCarouselModel) then) =
      _$HomeContentPromotionCarouselModelCopyWithImpl<$Res,
          HomeContentPromotionCarouselModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String subtitle,
      String image,
      String btnLabel});
}

/// @nodoc
class _$HomeContentPromotionCarouselModelCopyWithImpl<$Res,
        $Val extends HomeContentPromotionCarouselModel>
    implements $HomeContentPromotionCarouselModelCopyWith<$Res> {
  _$HomeContentPromotionCarouselModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = null,
    Object? image = null,
    Object? btnLabel = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      btnLabel: null == btnLabel
          ? _value.btnLabel
          : btnLabel // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeContentPromotionCarouselModelCopyWith<$Res>
    implements $HomeContentPromotionCarouselModelCopyWith<$Res> {
  factory _$$_HomeContentPromotionCarouselModelCopyWith(
          _$_HomeContentPromotionCarouselModel value,
          $Res Function(_$_HomeContentPromotionCarouselModel) then) =
      __$$_HomeContentPromotionCarouselModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String subtitle,
      String image,
      String btnLabel});
}

/// @nodoc
class __$$_HomeContentPromotionCarouselModelCopyWithImpl<$Res>
    extends _$HomeContentPromotionCarouselModelCopyWithImpl<$Res,
        _$_HomeContentPromotionCarouselModel>
    implements _$$_HomeContentPromotionCarouselModelCopyWith<$Res> {
  __$$_HomeContentPromotionCarouselModelCopyWithImpl(
      _$_HomeContentPromotionCarouselModel _value,
      $Res Function(_$_HomeContentPromotionCarouselModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = null,
    Object? image = null,
    Object? btnLabel = null,
  }) {
    return _then(_$_HomeContentPromotionCarouselModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      btnLabel: null == btnLabel
          ? _value.btnLabel
          : btnLabel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeContentPromotionCarouselModel
    implements _HomeContentPromotionCarouselModel {
  const _$_HomeContentPromotionCarouselModel(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.image,
      required this.btnLabel});

  factory _$_HomeContentPromotionCarouselModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_HomeContentPromotionCarouselModelFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String image;
  @override
  final String btnLabel;

  @override
  String toString() {
    return 'HomeContentPromotionCarouselModel(id: $id, title: $title, subtitle: $subtitle, image: $image, btnLabel: $btnLabel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeContentPromotionCarouselModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.btnLabel, btnLabel) ||
                other.btnLabel == btnLabel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, subtitle, image, btnLabel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeContentPromotionCarouselModelCopyWith<
          _$_HomeContentPromotionCarouselModel>
      get copyWith => __$$_HomeContentPromotionCarouselModelCopyWithImpl<
          _$_HomeContentPromotionCarouselModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeContentPromotionCarouselModelToJson(
      this,
    );
  }
}

abstract class _HomeContentPromotionCarouselModel
    implements HomeContentPromotionCarouselModel {
  const factory _HomeContentPromotionCarouselModel(
      {required final String id,
      required final String title,
      required final String subtitle,
      required final String image,
      required final String btnLabel}) = _$_HomeContentPromotionCarouselModel;

  factory _HomeContentPromotionCarouselModel.fromJson(
          Map<String, dynamic> json) =
      _$_HomeContentPromotionCarouselModel.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  String get image;
  @override
  String get btnLabel;
  @override
  @JsonKey(ignore: true)
  _$$_HomeContentPromotionCarouselModelCopyWith<
          _$_HomeContentPromotionCarouselModel>
      get copyWith => throw _privateConstructorUsedError;
}
