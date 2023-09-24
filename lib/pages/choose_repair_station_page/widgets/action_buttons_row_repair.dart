import 'package:abac_challenge/main.dart';
import 'package:abac_challenge/pages/choose_date_page/choose_date_page.dart';
import 'package:abac_challenge/pages/choose_date_page/providers/final_cart_prov.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ActionButtonsRowRepair extends ConsumerWidget {
  const ActionButtonsRowRepair({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasRepairStation =
        ref.watch(finalCartProv).repairStaition == null ? false : true;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
            onPressed: () {
              logger.i('User went to choose date page');
              Navigator.of(context)
                  .pushReplacementNamed(ChooseDatePage.routeName);
            },
            child: const Text(
              'ÎNAPOI',
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            )),
        TextButton(
            onPressed: hasRepairStation
                ? () {
                    logger.i('User finished choosing repair station.');
                  }
                : null,
            child: const Text(
              'FINALIZAȚI',
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            )),
      ],
    );
  }
}
