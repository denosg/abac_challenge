import 'package:freezed_annotation/freezed_annotation.dart';

part 'produs.freezed.dart';
part 'produs.g.dart';

@Freezed()
class Produs with _$Produs {
  const factory Produs({
    required int id,
    required String name,
    required double price,
  }) = _Produs;

  factory Produs.fromJson(Map<String, dynamic> json) => _$ProdusFromJson(json);
}
