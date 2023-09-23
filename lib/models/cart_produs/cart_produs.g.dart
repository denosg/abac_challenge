// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_produs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartProdus _$$_CartProdusFromJson(Map<String, dynamic> json) =>
    _$_CartProdus(
      id: json['id'] as String,
      produs: Produs.fromJson(json['produs'] as Map<String, dynamic>),
      quantity: json['quantity'] as int? ?? 1,
    );

Map<String, dynamic> _$$_CartProdusToJson(_$_CartProdus instance) =>
    <String, dynamic>{
      'id': instance.id,
      'produs': instance.produs,
      'quantity': instance.quantity,
    };
