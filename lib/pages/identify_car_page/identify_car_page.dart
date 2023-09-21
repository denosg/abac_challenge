import 'package:abac_challenge/pages/identify_car_page/widgets/search_widget.dart';
import 'package:abac_challenge/pages/identify_car_page/widgets/step_indicator.dart';
import 'package:flutter/material.dart';

class IdentifyCarPage extends StatelessWidget {
  static const routeName = 'identify-car-page';

  const IdentifyCarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    return Scaffold(
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
