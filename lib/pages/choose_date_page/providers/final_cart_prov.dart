import 'package:abac_challenge/main.dart';
import 'package:abac_challenge/models/cart_produs/cart_produs.dart';
import 'package:abac_challenge/models/final_cart/final_cart.dart';
import 'package:abac_challenge/models/repair_station/repair_station.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FinalCartNotif extends StateNotifier<FinalCart> {
  FinalCartNotif()
      : super(FinalCart(id: DateTime.now().toString(), cartList: []));

  void setFinalCart(List<CartProdus> cartList, DateTime dateTime) {
    state = state.copyWith(cartList: cartList, dateTime: dateTime);
    logger.i('final cart set: $state');
  }

  void setRepairStation(RepairStation repairStaition) {
    state = state.copyWith(repairStaition: repairStaition);
    logger.i('repair station set: ${state.repairStaition}');
  }
}

final finalCartProv = StateNotifierProvider<FinalCartNotif, FinalCart>(
  (ref) => FinalCartNotif(),
);
