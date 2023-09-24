import 'package:freezed_annotation/freezed_annotation.dart';

part 'repair_station.freezed.dart';
part 'repair_station.g.dart';

@Freezed()
class RepairStaition with _$RepairStaition {
  const factory RepairStaition({
    required String id,
    required String title,
    required int rating,
    required double price,
    required int time,
    required String picture,
  }) = _RepairStaition;

  factory RepairStaition.fromJson(Map<String, dynamic> json) =>
      _$RepairStaitionFromJson(json);
}
