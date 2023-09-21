// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_produs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartProdus _$CartProdusFromJson(Map<String, dynamic> json) {
  return _CartProdus.fromJson(json);
}

/// @nodoc
mixin _$CartProdus {
  Produs get produs => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartProdusCopyWith<CartProdus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProdusCopyWith<$Res> {
  factory $CartProdusCopyWith(
          CartProdus value, $Res Function(CartProdus) then) =
      _$CartProdusCopyWithImpl<$Res, CartProdus>;
  @useResult
  $Res call({Produs produs, int quantity});

  $ProdusCopyWith<$Res> get produs;
}

/// @nodoc
class _$CartProdusCopyWithImpl<$Res, $Val extends CartProdus>
    implements $CartProdusCopyWith<$Res> {
  _$CartProdusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? produs = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      produs: null == produs
          ? _value.produs
          : produs // ignore: cast_nullable_to_non_nullable
              as Produs,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProdusCopyWith<$Res> get produs {
    return $ProdusCopyWith<$Res>(_value.produs, (value) {
      return _then(_value.copyWith(produs: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CartProdusCopyWith<$Res>
    implements $CartProdusCopyWith<$Res> {
  factory _$$_CartProdusCopyWith(
          _$_CartProdus value, $Res Function(_$_CartProdus) then) =
      __$$_CartProdusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Produs produs, int quantity});

  @override
  $ProdusCopyWith<$Res> get produs;
}

/// @nodoc
class __$$_CartProdusCopyWithImpl<$Res>
    extends _$CartProdusCopyWithImpl<$Res, _$_CartProdus>
    implements _$$_CartProdusCopyWith<$Res> {
  __$$_CartProdusCopyWithImpl(
      _$_CartProdus _value, $Res Function(_$_CartProdus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? produs = null,
    Object? quantity = null,
  }) {
    return _then(_$_CartProdus(
      produs: null == produs
          ? _value.produs
          : produs // ignore: cast_nullable_to_non_nullable
              as Produs,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartProdus implements _CartProdus {
  const _$_CartProdus({required this.produs, this.quantity = 1});

  factory _$_CartProdus.fromJson(Map<String, dynamic> json) =>
      _$$_CartProdusFromJson(json);

  @override
  final Produs produs;
  @override
  @JsonKey()
  final int quantity;

  @override
  String toString() {
    return 'CartProdus(produs: $produs, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartProdus &&
            (identical(other.produs, produs) || other.produs == produs) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, produs, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartProdusCopyWith<_$_CartProdus> get copyWith =>
      __$$_CartProdusCopyWithImpl<_$_CartProdus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartProdusToJson(
      this,
    );
  }
}

abstract class _CartProdus implements CartProdus {
  const factory _CartProdus(
      {required final Produs produs, final int quantity}) = _$_CartProdus;

  factory _CartProdus.fromJson(Map<String, dynamic> json) =
      _$_CartProdus.fromJson;

  @override
  Produs get produs;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_CartProdusCopyWith<_$_CartProdus> get copyWith =>
      throw _privateConstructorUsedError;
}
