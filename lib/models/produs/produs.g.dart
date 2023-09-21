// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Produs _$$_ProdusFromJson(Map<String, dynamic> json) => _$_Produs(
      id: json['id'] as int,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ProdusToJson(_$_Produs instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
    };
