import 'package:abac_challenge/pages/choose_date_page/widgets/action_buttons_row.dart';
import 'package:abac_challenge/pages/identify_car_page/widgets/step_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChooseDatePage extends ConsumerWidget {
  static const routeName = 'choose-date-page';

  const ChooseDatePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: const ActionButtonsRow(),
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
              const StepIndicator(currentStep: 2),
            ],
          ),
        ),
      ),
    );
  }
}
