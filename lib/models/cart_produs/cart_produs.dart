import 'package:abac_challenge/models/produs/produs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_produs.freezed.dart';
part 'cart_produs.g.dart';

@Freezed()
class CartProdus with _$CartProdus {
  const factory CartProdus({
    required String id,
    required Produs produs,
    @Default(1) int quantity,
  }) = _CartProdus;

  factory CartProdus.fromJson(Map<String, dynamic> json) =>
      _$CartProdusFromJson(json);
}
