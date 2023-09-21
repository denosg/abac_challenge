import 'package:abac_challenge/main.dart';
import 'package:abac_challenge/models/cart_produs/cart_produs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewCartNotif extends StateNotifier<CartProdus?> {
  NewCartNotif() : super(null);

  void setCartProv(CartProdus? cartProdus) {
    state = cartProdus;
    logger.i('state of newCart: $state');
  }

  void setCartQuantity(int quantity) {
    state = state!.copyWith(quantity: quantity);
  }
}

final newCartProv = StateNotifierProvider<NewCartNotif, CartProdus?>(
  (ref) => NewCartNotif(),
);
