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

RepairStaition _$RepairStaitionFromJson(Map<String, dynamic> json) {
  return _RepairStaition.fromJson(json);
}

/// @nodoc
mixin _$RepairStaition {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepairStaitionCopyWith<RepairStaition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepairStaitionCopyWith<$Res> {
  factory $RepairStaitionCopyWith(
          RepairStaition value, $Res Function(RepairStaition) then) =
      _$RepairStaitionCopyWithImpl<$Res, RepairStaition>;
  @useResult
  $Res call(
      {String id,
      String title,
      int rating,
      double price,
      String time,
      String picture});
}

/// @nodoc
class _$RepairStaitionCopyWithImpl<$Res, $Val extends RepairStaition>
    implements $RepairStaitionCopyWith<$Res> {
  _$RepairStaitionCopyWithImpl(this._value, this._then);

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
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RepairStaitionCopyWith<$Res>
    implements $RepairStaitionCopyWith<$Res> {
  factory _$$_RepairStaitionCopyWith(
          _$_RepairStaition value, $Res Function(_$_RepairStaition) then) =
      __$$_RepairStaitionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      int rating,
      double price,
      String time,
      String picture});
}

/// @nodoc
class __$$_RepairStaitionCopyWithImpl<$Res>
    extends _$RepairStaitionCopyWithImpl<$Res, _$_RepairStaition>
    implements _$$_RepairStaitionCopyWith<$Res> {
  __$$_RepairStaitionCopyWithImpl(
      _$_RepairStaition _value, $Res Function(_$_RepairStaition) _then)
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
    return _then(_$_RepairStaition(
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
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RepairStaition implements _RepairStaition {
  const _$_RepairStaition(
      {required this.id,
      required this.title,
      required this.rating,
      required this.price,
      required this.time,
      required this.picture});

  factory _$_RepairStaition.fromJson(Map<String, dynamic> json) =>
      _$$_RepairStaitionFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final int rating;
  @override
  final double price;
  @override
  final String time;
  @override
  final String picture;

  @override
  String toString() {
    return 'RepairStaition(id: $id, title: $title, rating: $rating, price: $price, time: $time, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RepairStaition &&
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
  _$$_RepairStaitionCopyWith<_$_RepairStaition> get copyWith =>
      __$$_RepairStaitionCopyWithImpl<_$_RepairStaition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepairStaitionToJson(
      this,
    );
  }
}

abstract class _RepairStaition implements RepairStaition {
  const factory _RepairStaition(
      {required final String id,
      required final String title,
      required final int rating,
      required final double price,
      required final String time,
      required final String picture}) = _$_RepairStaition;

  factory _RepairStaition.fromJson(Map<String, dynamic> json) =
      _$_RepairStaition.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  int get rating;
  @override
  double get price;
  @override
  String get time;
  @override
  String get picture;
  @override
  @JsonKey(ignore: true)
  _$$_RepairStaitionCopyWith<_$_RepairStaition> get copyWith =>
      throw _privateConstructorUsedError;
}
