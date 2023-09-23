import 'package:abac_challenge/models/cart_produs/cart_produs.dart';
import 'package:abac_challenge/models/produs/produs.dart';
import 'package:abac_challenge/pages/identify_car_page/providers/cart_prov.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductInCartWidget extends ConsumerWidget {
  final Produs produs;
  final CartProdus cartProdus;
  const ProductInCartWidget(
      {super.key, required this.cartProdus, required this.produs});

  double getTotalPrice(double productPrice, int quantity) {
    return productPrice * quantity;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quantity = cartProdus.quantity;

    const textStyle =
        TextStyle(fontWeight: FontWeight.bold, color: Colors.black);

    return InkWell(
      onLongPress: () =>
          CartNotifier.addOrEditProduct(context, ref, produs, cartProdus),
      child: Dismissible(
        //Alert Dialog
        confirmDismiss: (direction) {
          return showDialog(
              context: context,
              builder: (ctx) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: const Text(
                      'Ești sigur că vrei sa ștergi acest produs ?',
                      style: textStyle),
                  //Options for the user regarding deleting the product
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                        child: const Text('Nu', style: textStyle)),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: const Text('Da', style: textStyle))
                  ],
                );
              });
        },
        //Sets the key for each item so it shows and deletes the right one
        key: ValueKey(cartProdus.id),
        direction: DismissDirection.endToStart,
        onDismissed: (direction) {
          ref.read(cartProvider.notifier).removeItem(cartProdus.id);
        },
        //Creates the deleting UI
        background: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.deepOrange,
          ),
          padding: const EdgeInsets.only(right: 5),
          alignment: Alignment.centerRight,
          child: const Icon(
            Icons.delete,
            color: Colors.white,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(produs.name, style: textStyle),
                ),
                Flexible(
                  child: Text('$quantity', style: textStyle),
                ),
                Flexible(
                  child: Text('${produs.price}', style: textStyle),
                ),
                Flexible(
                  child: Text(
                    '${getTotalPrice(produs.price, quantity)}',
                    style: textStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
