// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_work_content_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeWorkModel _$HomeWorkModelFromJson(Map<String, dynamic> json) {
  return _HomeWorkModel.fromJson(json);
}

/// @nodoc
mixin _$HomeWorkModel {
  String get id => throw _privateConstructorUsedError;
  String get mapel => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get countMapel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeWorkModelCopyWith<HomeWorkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeWorkModelCopyWith<$Res> {
  factory $HomeWorkModelCopyWith(
          HomeWorkModel value, $Res Function(HomeWorkModel) then) =
      _$HomeWorkModelCopyWithImpl<$Res, HomeWorkModel>;
  @useResult
  $Res call({String id, String mapel, String uid, String countMapel});
}

/// @nodoc
class _$HomeWorkModelCopyWithImpl<$Res, $Val extends HomeWorkModel>
    implements $HomeWorkModelCopyWith<$Res> {
  _$HomeWorkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mapel = null,
    Object? uid = null,
    Object? countMapel = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mapel: null == mapel
          ? _value.mapel
          : mapel // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      countMapel: null == countMapel
          ? _value.countMapel
          : countMapel // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeWorkModelCopyWith<$Res>
    implements $HomeWorkModelCopyWith<$Res> {
  factory _$$_HomeWorkModelCopyWith(
          _$_HomeWorkModel value, $Res Function(_$_HomeWorkModel) then) =
      __$$_HomeWorkModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String mapel, String uid, String countMapel});
}

/// @nodoc
class __$$_HomeWorkModelCopyWithImpl<$Res>
    extends _$HomeWorkModelCopyWithImpl<$Res, _$_HomeWorkModel>
    implements _$$_HomeWorkModelCopyWith<$Res> {
  __$$_HomeWorkModelCopyWithImpl(
      _$_HomeWorkModel _value, $Res Function(_$_HomeWorkModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mapel = null,
    Object? uid = null,
    Object? countMapel = null,
  }) {
    return _then(_$_HomeWorkModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mapel: null == mapel
          ? _value.mapel
          : mapel // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      countMapel: null == countMapel
          ? _value.countMapel
          : countMapel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeWorkModel implements _HomeWorkModel {
  const _$_HomeWorkModel(
      {required this.id,
      required this.mapel,
      required this.uid,
      required this.countMapel});

  factory _$_HomeWorkModel.fromJson(Map<String, dynamic> json) =>
      _$$_HomeWorkModelFromJson(json);

  @override
  final String id;
  @override
  final String mapel;
  @override
  final String uid;
  @override
  final String countMapel;

  @override
  String toString() {
    return 'HomeWorkModel(id: $id, mapel: $mapel, uid: $uid, countMapel: $countMapel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeWorkModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mapel, mapel) || other.mapel == mapel) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.countMapel, countMapel) ||
                other.countMapel == countMapel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, mapel, uid, countMapel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeWorkModelCopyWith<_$_HomeWorkModel> get copyWith =>
      __$$_HomeWorkModelCopyWithImpl<_$_HomeWorkModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeWorkModelToJson(
      this,
    );
  }
}

abstract class _HomeWorkModel implements HomeWorkModel {
  const factory _HomeWorkModel(
      {required final String id,
      required final String mapel,
      required final String uid,
      required final String countMapel}) = _$_HomeWorkModel;

  factory _HomeWorkModel.fromJson(Map<String, dynamic> json) =
      _$_HomeWorkModel.fromJson;

  @override
  String get id;
  @override
  String get mapel;
  @override
  String get uid;
  @override
  String get countMapel;
  @override
  @JsonKey(ignore: true)
  _$$_HomeWorkModelCopyWith<_$_HomeWorkModel> get copyWith =>
      throw _privateConstructorUsedError;
}
