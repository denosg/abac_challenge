// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'final_cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FinalCart _$FinalCartFromJson(Map<String, dynamic> json) {
  return _FinalCart.fromJson(json);
}

/// @nodoc
mixin _$FinalCart {
  String get id => throw _privateConstructorUsedError;
  List<CartProdus> get cartList => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;
  RepairStaition? get repairStaition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FinalCartCopyWith<FinalCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinalCartCopyWith<$Res> {
  factory $FinalCartCopyWith(FinalCart value, $Res Function(FinalCart) then) =
      _$FinalCartCopyWithImpl<$Res, FinalCart>;
  @useResult
  $Res call(
      {String id,
      List<CartProdus> cartList,
      DateTime? dateTime,
      RepairStaition? repairStaition});

  $RepairStaitionCopyWith<$Res>? get repairStaition;
}

/// @nodoc
class _$FinalCartCopyWithImpl<$Res, $Val extends FinalCart>
    implements $FinalCartCopyWith<$Res> {
  _$FinalCartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cartList = null,
    Object? dateTime = freezed,
    Object? repairStaition = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cartList: null == cartList
          ? _value.cartList
          : cartList // ignore: cast_nullable_to_non_nullable
              as List<CartProdus>,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      repairStaition: freezed == repairStaition
          ? _value.repairStaition
          : repairStaition // ignore: cast_nullable_to_non_nullable
              as RepairStaition?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RepairStaitionCopyWith<$Res>? get repairStaition {
    if (_value.repairStaition == null) {
      return null;
    }

    return $RepairStaitionCopyWith<$Res>(_value.repairStaition!, (value) {
      return _then(_value.copyWith(repairStaition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FinalCartCopyWith<$Res> implements $FinalCartCopyWith<$Res> {
  factory _$$_FinalCartCopyWith(
          _$_FinalCart value, $Res Function(_$_FinalCart) then) =
      __$$_FinalCartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<CartProdus> cartList,
      DateTime? dateTime,
      RepairStaition? repairStaition});

  @override
  $RepairStaitionCopyWith<$Res>? get repairStaition;
}

/// @nodoc
class __$$_FinalCartCopyWithImpl<$Res>
    extends _$FinalCartCopyWithImpl<$Res, _$_FinalCart>
    implements _$$_FinalCartCopyWith<$Res> {
  __$$_FinalCartCopyWithImpl(
      _$_FinalCart _value, $Res Function(_$_FinalCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cartList = null,
    Object? dateTime = freezed,
    Object? repairStaition = freezed,
  }) {
    return _then(_$_FinalCart(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cartList: null == cartList
          ? _value._cartList
          : cartList // ignore: cast_nullable_to_non_nullable
              as List<CartProdus>,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      repairStaition: freezed == repairStaition
          ? _value.repairStaition
          : repairStaition // ignore: cast_nullable_to_non_nullable
              as RepairStaition?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FinalCart implements _FinalCart {
  const _$_FinalCart(
      {required this.id,
      required final List<CartProdus> cartList,
      this.dateTime = null,
      this.repairStaition = null})
      : _cartList = cartList;

  factory _$_FinalCart.fromJson(Map<String, dynamic> json) =>
      _$$_FinalCartFromJson(json);

  @override
  final String id;
  final List<CartProdus> _cartList;
  @override
  List<CartProdus> get cartList {
    if (_cartList is EqualUnmodifiableListView) return _cartList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartList);
  }

  @override
  @JsonKey()
  final DateTime? dateTime;
  @override
  @JsonKey()
  final RepairStaition? repairStaition;

  @override
  String toString() {
    return 'FinalCart(id: $id, cartList: $cartList, dateTime: $dateTime, repairStaition: $repairStaition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FinalCart &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._cartList, _cartList) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.repairStaition, repairStaition) ||
                other.repairStaition == repairStaition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_cartList), dateTime, repairStaition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FinalCartCopyWith<_$_FinalCart> get copyWith =>
      __$$_FinalCartCopyWithImpl<_$_FinalCart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FinalCartToJson(
      this,
    );
  }
}

abstract class _FinalCart implements FinalCart {
  const factory _FinalCart(
      {required final String id,
      required final List<CartProdus> cartList,
      final DateTime? dateTime,
      final RepairStaition? repairStaition}) = _$_FinalCart;

  factory _FinalCart.fromJson(Map<String, dynamic> json) =
      _$_FinalCart.fromJson;

  @override
  String get id;
  @override
  List<CartProdus> get cartList;
  @override
  DateTime? get dateTime;
  @override
  RepairStaition? get repairStaition;
  @override
  @JsonKey(ignore: true)
  _$$_FinalCartCopyWith<_$_FinalCart> get copyWith =>
      throw _privateConstructorUsedError;
}
