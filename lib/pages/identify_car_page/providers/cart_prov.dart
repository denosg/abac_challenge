import 'package:abac_challenge/main.dart';
import 'package:abac_challenge/models/cart_produs/cart_produs.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartNotifier extends StateNotifier<List<CartProdus>> {
  CartNotifier() : super([]);

  void addItem(CartProdus item) {
    logger.i('$item has been added to cart');
    state = [...state, item];
  }

  void removeItem(int itemId) {
    logger.i('$itemId has been removed from cart');
    state = state.where((item) => item.produs.id != itemId).toList();
  }
}

final cartProvider = StateNotifierProvider<CartNotifier, List<CartProdus>>(
  (ref) => CartNotifier(),
);
