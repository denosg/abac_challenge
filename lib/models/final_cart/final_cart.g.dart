// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'final_cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FinalCart _$$_FinalCartFromJson(Map<String, dynamic> json) => _$_FinalCart(
      id: json['id'] as String,
      cartList: (json['cartList'] as List<dynamic>)
          .map((e) => CartProdus.fromJson(e as Map<String, dynamic>))
          .toList(),
      dateTime: json['dateTime'] == null
          ? null
          : DateTime.parse(json['dateTime'] as String),
      repairStaition: json['repairStaition'] == null
          ? null
          : RepairStaition.fromJson(
              json['repairStaition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FinalCartToJson(_$_FinalCart instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cartList': instance.cartList,
      'dateTime': instance.dateTime?.toIso8601String(),
      'repairStaition': instance.repairStaition,
    };
