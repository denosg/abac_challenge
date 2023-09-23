import 'package:flutter/material.dart';

class StepIndicator extends StatelessWidget {
  final int currentStep;

  const StepIndicator({super.key, required this.currentStep});

  @override
  Widget build(BuildContext context) {
    final List<int> steps = [1, 2];

    final List<String> stepText = [
      'Creează deviz',
      'Stabilește ora',
    ];

    final ColorScheme colors = Theme.of(context).colorScheme;

    final deviceSize = MediaQuery.of(context).size;

    return Center(
      child: SizedBox(
        width: deviceSize.width * 0.8,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: deviceSize.width * 0.7,
                  child: const Divider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (var step in steps)
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentStep > step
                              ? Colors.green
                              : currentStep == step
                                  ? colors.tertiary
                                  : Colors.grey,
                        ),
                        child: Center(
                          child: Text(
                            step.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 45,
              child: Text(
                stepText[currentStep - 1],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: colors.tertiary,
                  fontSize: 12,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
