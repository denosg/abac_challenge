import 'package:abac_challenge/models/cart_produs/cart_produs.dart';
import 'package:abac_challenge/models/repair_station/repair_station.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'final_cart.freezed.dart';
part 'final_cart.g.dart';

@Freezed()
class FinalCart with _$FinalCart {
  const factory FinalCart({
    required String id,
    required List<CartProdus> cartList,
    @Default(null) DateTime? dateTime,
    @Default(null) RepairStation? repairStaition,
  }) = _FinalCart;

  factory FinalCart.fromJson(Map<String, dynamic> json) =>
      _$FinalCartFromJson(json);
}
