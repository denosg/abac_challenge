import 'package:abac_challenge/pages/choose_date_page/providers/date_picker_prov.dart';
import 'package:abac_challenge/pages/choose_date_page/widgets/hour_widget.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DateTimePicker extends HookConsumerWidget {
  const DateTimePicker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pickedDate = useState<DateTime?>(null);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        DatePicker(
          DateTime.now(),
          daysCount: 5,
          initialSelectedDate: DateTime.now(),
          selectionColor: Colors.black,
          selectedTextColor: Colors.white,
          onDateChange: (date) {
            pickedDate.value = date;
            ref.read(datePickerProv.notifier).setDay(date);
          },
        ),
        const HourGridWidget(),
      ],
    );
  }
}
