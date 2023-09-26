import 'package:abac_challenge/main.dart';
import 'package:abac_challenge/pages/choose_date_page/choose_date_page.dart';
import 'package:abac_challenge/pages/identify_car_page/providers/cart_prov.dart';
import 'package:abac_challenge/pages/identify_car_page/widgets/search_widget.dart';
import 'package:abac_challenge/pages/identify_car_page/widgets/step_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IdentifyCarPage extends ConsumerWidget {
  static const routeName = 'identify-car-page';

  const IdentifyCarPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    final cart = ref.watch(cartProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: TextButton(
          onPressed: cart.isEmpty
              ? null
              : () {
                  logger.i('User went to choosing date page');
                  Navigator.of(context)
                      .pushReplacementNamed(ChooseDatePage.routeName);
                },
          child: const Text(
            'ÎNAINTE',
            style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Text(
                'LICITEAZĂ',
                style: TextStyle(
                    color: colors.tertiary,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              const SizedBox(height: 30),
              const StepIndicator(currentStep: 1),
              const SizedBox(height: 30),
              const SearchWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
