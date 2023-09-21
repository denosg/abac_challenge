// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'produs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Produs _$ProdusFromJson(Map<String, dynamic> json) {
  return _Produs.fromJson(json);
}

/// @nodoc
mixin _$Produs {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProdusCopyWith<Produs> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProdusCopyWith<$Res> {
  factory $ProdusCopyWith(Produs value, $Res Function(Produs) then) =
      _$ProdusCopyWithImpl<$Res, Produs>;
  @useResult
  $Res call({int id, String name, double price});
}

/// @nodoc
class _$ProdusCopyWithImpl<$Res, $Val extends Produs>
    implements $ProdusCopyWith<$Res> {
  _$ProdusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProdusCopyWith<$Res> implements $ProdusCopyWith<$Res> {
  factory _$$_ProdusCopyWith(_$_Produs value, $Res Function(_$_Produs) then) =
      __$$_ProdusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, double price});
}

/// @nodoc
class __$$_ProdusCopyWithImpl<$Res>
    extends _$ProdusCopyWithImpl<$Res, _$_Produs>
    implements _$$_ProdusCopyWith<$Res> {
  __$$_ProdusCopyWithImpl(_$_Produs _value, $Res Function(_$_Produs) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_$_Produs(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Produs implements _Produs {
  const _$_Produs({required this.id, required this.name, required this.price});

  factory _$_Produs.fromJson(Map<String, dynamic> json) =>
      _$$_ProdusFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final double price;

  @override
  String toString() {
    return 'Produs(id: $id, name: $name, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Produs &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProdusCopyWith<_$_Produs> get copyWith =>
      __$$_ProdusCopyWithImpl<_$_Produs>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProdusToJson(
      this,
    );
  }
}

abstract class _Produs implements Produs {
  const factory _Produs(
      {required final int id,
      required final String name,
      required final double price}) = _$_Produs;

  factory _Produs.fromJson(Map<String, dynamic> json) = _$_Produs.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$_ProdusCopyWith<_$_Produs> get copyWith =>
      throw _privateConstructorUsedError;
}
