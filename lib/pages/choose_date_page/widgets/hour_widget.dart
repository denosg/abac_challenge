import 'package:abac_challenge/pages/choose_date_page/providers/date_picker_prov.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';

final selectedHourProvider = StateProvider<int?>((ref) => null);

class HourGridWidget extends HookConsumerWidget {
  const HourGridWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceSize = MediaQuery.of(context).size;

    final selectedHour = ref.watch(datePickerProv);

    return SizedBox(
      height: deviceSize.height * 0.5,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2.5,
          crossAxisSpacing: 2,
        ),
        itemCount: 9,
        itemBuilder: (context, index) {
          final hour = index + 8;
          return HourExample(hour: hour, isSelected: selectedHour.hour == hour);
        },
      ),
    );
  }
}

class HourExample extends HookConsumerWidget {
  final int hour;
  final bool isSelected;

  const HourExample({super.key, required this.hour, required this.isSelected});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceSize = MediaQuery.of(context).size;

    String formatTime(int hour) {
      if (hour >= 0 && hour < 10) {
        return '0$hour:00';
      } else if (hour >= 10 && hour < 24) {
        return '$hour:00';
      } else {
        throw ArgumentError('Hour must be between 0 and 23.');
      }
    }

    return GestureDetector(
      onTap: () {
        ref.read(datePickerProv.notifier).setHour(hour);
      },
      child: Column(
        children: [
          Container(
            width: deviceSize.width * 0.5,
            height: deviceSize.height * 0.05,
            decoration: BoxDecoration(
              color: isSelected ? Colors.black : Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: isSelected ? Colors.white : Colors.black,
                width: 2.0,
              ),
            ),
            child: Center(
              child: Text(
                formatTime(hour),
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 5)
        ],
      ),
    );
  }
}
