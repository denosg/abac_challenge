import 'package:abac_challenge/main.dart';
import 'package:abac_challenge/pages/choose_date_page/providers/final_cart_prov.dart';
import 'package:abac_challenge/pages/identify_car_page/identify_car_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ActionButtonsRow extends ConsumerWidget {
  const ActionButtonsRow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasFinalCartDate =
        ref.read(finalCartProv).dateTime == null ? false : true;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: TextButton(
              onPressed: () {
                logger.i('User went to choosing repair station page');
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
            onPressed: hasFinalCartDate
                ? () {
                    logger.i('User went to choosing repair station page');
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
