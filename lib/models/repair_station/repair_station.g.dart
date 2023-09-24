// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repair_station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RepairStation _$$_RepairStationFromJson(Map<String, dynamic> json) =>
    _$_RepairStation(
      id: json['id'] as String,
      title: json['title'] as String,
      rating: json['rating'] as int,
      price: (json['price'] as num).toDouble(),
      time: json['time'] as int,
      picture: json['picture'] as String,
    );

Map<String, dynamic> _$$_RepairStationToJson(_$_RepairStation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'rating': instance.rating,
      'price': instance.price,
      'time': instance.time,
      'picture': instance.picture,
    };
