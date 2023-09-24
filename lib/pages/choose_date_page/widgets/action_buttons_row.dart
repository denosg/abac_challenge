import 'package:abac_challenge/main.dart';
import 'package:abac_challenge/pages/choose_date_page/providers/date_picker_prov.dart';
import 'package:abac_challenge/pages/choose_date_page/providers/final_cart_prov.dart';
import 'package:abac_challenge/pages/choose_repair_station_page/choose_repair_station_page.dart';
import 'package:abac_challenge/pages/identify_car_page/identify_car_page.dart';
import 'package:abac_challenge/pages/identify_car_page/providers/cart_prov.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ActionButtonsRow extends ConsumerWidget {
  const ActionButtonsRow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedHour = ref.watch(datePickerProv);
    final hasHourSelected = selectedHour.hour != 0;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: TextButton(
              onPressed: () {
                logger.i('User went to identify car page');
                Navigator.of(context)
                    .pushReplacementNamed(IdentifyCarPage.routeName);
              },
              child: const Text(
                'ÎNAPOI',
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
        ),
        TextButton(
            onPressed: hasHourSelected
                ? () {
                    final cartList = ref.read(cartProvider);
                    final dateTime = ref.read(datePickerProv);
                    ref
                        .read(finalCartProv.notifier)
                        .setFinalCart(cartList, dateTime);
                    logger.i('User went to choosing repair station page');
                    Navigator.of(context)
                        .pushNamed(ChooseRepairStationPage.routeName);
                  }
                : null,
            child: const Text(
              'ÎNAINTE',
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            )),
      ],
    );
  }
}
