import 'package:abac_challenge/main.dart';
import 'package:abac_challenge/models/cart_produs/cart_produs.dart';
import 'package:abac_challenge/models/produs/produs.dart';
import 'package:abac_challenge/pages/identify_car_page/providers/new_cart_prov.dart';
import 'package:abac_challenge/pages/identify_car_page/widgets/new_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartNotifier extends StateNotifier<List<CartProdus>> {
  CartNotifier() : super([]);

  void addItem(CartProdus item) {
    logger.i('$item has been added to cart');
    state = [...state, item];
  }

  void removeItem(String itemId) {
    logger.i('$itemId has been removed from cart');

    final index = state.indexWhere((item) => item.id == itemId);

    if (index != -1) {
      final newState = List<CartProdus>.from(state);
      newState.removeAt(index);
      state = newState;
    }
  }

  void changeQuantity({required String itemId, required int quantity}) {
    logger.i('User changed quantity for: $itemId');

    final index = state.indexWhere((item) => item.id == itemId);

    if (index != -1) {
      final updatedItem = state[index].copyWith(quantity: quantity);
      final newState = List<CartProdus>.from(state);
      newState[index] = updatedItem;
      state = newState;
    }
  }

  bool isItemInList(String itemId) {
    return state.contains(getItemById(itemId));
  }

  bool isNameOfItemInList(String itemName) {
    // Use any() method to check if any item in the list has the specified itemName
    return state.any((item) => item.produs.name == itemName);
  }

  CartProdus? getItemById(String itemId) {
    for (var item in state) {
      if (item.id == itemId) {
        return item;
      }
    }
    return null;
  }

  // modal bottoom sheet when entering new item in the list
  static void addOrEditProduct(BuildContext context, WidgetRef ref,
      Produs produs, CartProdus? cartProdus) {
    CartProdus tempCart;
    if (cartProdus != null) {
      tempCart = cartProdus;
      logger.i('User is editing this cartProduct: $tempCart');
    } else {
      final tempCartId = DateTime.now().toIso8601String();
      tempCart = CartProdus(id: tempCartId, produs: produs);
      logger.i('User is adding this cartProduct: $tempCart');
    }
    ref.read(newCartProv.notifier).setCartProv(tempCart);

    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      context: context,
      builder: (context) => const NewProduct(),
    );
  }
}

final cartProvider = StateNotifierProvider<CartNotifier, List<CartProdus>>(
  (ref) => CartNotifier(),
);
