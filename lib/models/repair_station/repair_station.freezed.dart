// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repair_station.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepairStation _$RepairStationFromJson(Map<String, dynamic> json) {
  return _RepairStation.fromJson(json);
}

/// @nodoc
mixin _$RepairStation {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepairStationCopyWith<RepairStation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepairStationCopyWith<$Res> {
  factory $RepairStationCopyWith(
          RepairStation value, $Res Function(RepairStation) then) =
      _$RepairStationCopyWithImpl<$Res, RepairStation>;
  @useResult
  $Res call(
      {String id,
      String title,
      int rating,
      double price,
      int time,
      String picture});
}

/// @nodoc
class _$RepairStationCopyWithImpl<$Res, $Val extends RepairStation>
    implements $RepairStationCopyWith<$Res> {
  _$RepairStationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? rating = null,
    Object? price = null,
    Object? time = null,
    Object? picture = null,
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
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RepairStationCopyWith<$Res>
    implements $RepairStationCopyWith<$Res> {
  factory _$$_RepairStationCopyWith(
          _$_RepairStation value, $Res Function(_$_RepairStation) then) =
      __$$_RepairStationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      int rating,
      double price,
      int time,
      String picture});
}

/// @nodoc
class __$$_RepairStationCopyWithImpl<$Res>
    extends _$RepairStationCopyWithImpl<$Res, _$_RepairStation>
    implements _$$_RepairStationCopyWith<$Res> {
  __$$_RepairStationCopyWithImpl(
      _$_RepairStation _value, $Res Function(_$_RepairStation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? rating = null,
    Object? price = null,
    Object? time = null,
    Object? picture = null,
  }) {
    return _then(_$_RepairStation(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RepairStation implements _RepairStation {
  const _$_RepairStation(
      {required this.id,
      required this.title,
      required this.rating,
      required this.price,
      required this.time,
      required this.picture});

  factory _$_RepairStation.fromJson(Map<String, dynamic> json) =>
      _$$_RepairStationFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final int rating;
  @override
  final double price;
  @override
  final int time;
  @override
  final String picture;

  @override
  String toString() {
    return 'RepairStation(id: $id, title: $title, rating: $rating, price: $price, time: $time, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RepairStation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, rating, price, time, picture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RepairStationCopyWith<_$_RepairStation> get copyWith =>
      __$$_RepairStationCopyWithImpl<_$_RepairStation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepairStationToJson(
      this,
    );
  }
}

abstract class _RepairStation implements RepairStation {
  const factory _RepairStation(
      {required final String id,
      required final String title,
      required final int rating,
      required final double price,
      required final int time,
      required final String picture}) = _$_RepairStation;

  factory _RepairStation.fromJson(Map<String, dynamic> json) =
      _$_RepairStation.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  int get rating;
  @override
  double get price;
  @override
  int get time;
  @override
  String get picture;
  @override
  @JsonKey(ignore: true)
  _$$_RepairStationCopyWith<_$_RepairStation> get copyWith =>
      throw _privateConstructorUsedError;
}
