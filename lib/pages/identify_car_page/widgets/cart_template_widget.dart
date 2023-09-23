import 'package:abac_challenge/pages/identify_car_page/providers/cart_prov.dart';
import 'package:abac_challenge/pages/identify_car_page/widgets/product_in_cart_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartTempWidget extends ConsumerWidget {
  const CartTempWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const textStyle = TextStyle(fontWeight: FontWeight.bold);

    final cartList = ref.watch(cartProvider);

    final deviceSize = MediaQuery.of(context).size;

    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Produs', style: textStyle),
            Text('Cantitate', style: textStyle),
            Text('Preț Unitar', style: textStyle),
            Text('Total', style: textStyle),
          ],
        ),
        const Divider(thickness: 2.5),
        SizedBox(
          height: deviceSize.height * 0.5,
          child: ListView.builder(
            itemBuilder: (context, index) {
              final product = cartList[index].produs;
              final cartProduct = cartList[index];
              return ProductInCartWidget(
                  cartProdus: cartProduct, produs: product);
            },
            itemCount: cartList.length,
          ),
        ),
      ],
    );
  }
}
