import 'package:freezed_annotation/freezed_annotation.dart';

part 'repair_station.freezed.dart';
part 'repair_station.g.dart';

@Freezed()
class RepairStation with _$RepairStation {
  const factory RepairStation({
    required String id,
    required String title,
    required int rating,
    required double price,
    required int time,
    required String picture,
  }) = _RepairStation;

  factory RepairStation.fromJson(Map<String, dynamic> json) =>
      _$RepairStationFromJson(json);
}
