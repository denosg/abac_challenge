import 'package:abac_challenge/pages/identify_car_page/providers/cart_prov.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartTempWidget extends ConsumerWidget {
  const CartTempWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const textStyle = TextStyle(fontWeight: FontWeight.bold);

    final cartList = ref.watch(cartProvider);

    final deviceSize = MediaQuery.of(context).size;

    double getTotalPrice(double productPrice, int quantity) {
      return productPrice * quantity;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
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
          SizedBox(
            height: deviceSize.height * 0.5,
            child: ListView.builder(
              itemBuilder: (context, index) {
                final product = cartList[index].produs;
                final quantity = cartList[index].quantity;
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: deviceSize.width * 0.24,
                        child: Expanded(
                            child: Text(product.name, style: textStyle))),
                    SizedBox(
                        width: deviceSize.width * 0.24,
                        child: Text('$quantity', style: textStyle)),
                    SizedBox(
                        width: deviceSize.width * 0.24,
                        child: Text('${product.price}', style: textStyle)),
                    SizedBox(
                      width: deviceSize.width * 0.24,
                      child: Expanded(
                        child: Text('${getTotalPrice(product.price, quantity)}',
                            style: textStyle),
                      ),
                    ),
                  ],
                );
              },
              itemCount: cartList.length,
            ),
          ),
        ],
      ),
    );
  }
}
