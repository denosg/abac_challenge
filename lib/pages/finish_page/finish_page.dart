import 'package:abac_challenge/pages/choose_date_page/providers/final_cart_prov.dart';
import 'package:abac_challenge/pages/identify_car_page/providers/cart_prov.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class FinishPage extends ConsumerWidget {
  static const routeName = 'finish-page';

  const FinishPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    final deviceSize = MediaQuery.of(context).size;

    final finalCart = ref.read(finalCartProv);
    final cartList = finalCart.cartList;
    final date = finalCart.dateTime;
    final repairStation = finalCart.repairStaition;

    final formatter = DateFormat('dd.MM.yyyy HH:mm');

    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.only(left: deviceSize.width * 0.1),
                  margin: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Text(
                        'Vă mulțumim\npentru\ncumpărături !',
                        style: TextStyle(
                            color: colors.secondary,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      const SizedBox(width: 10),
                      Image.asset(
                        'img/smiley_face.png',
                        height: 80,
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Text(
                  'Ați cumpărat: ',
                  style: TextStyle(
                      color: colors.secondary,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Text(
                        "- ${cartList[index].produs.name}",
                        style: TextStyle(color: colors.secondary, fontSize: 18),
                      );
                    },
                    itemCount: ref.read(cartProvider).length,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Pentru data de: ${formatter.format(date!)}',
                  style: TextStyle(
                      color: colors.secondary,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const SizedBox(height: 10),
                Text(
                  'De la stația de reparare:\n${repairStation!.title}',
                  style: TextStyle(
                      color: colors.secondary,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
