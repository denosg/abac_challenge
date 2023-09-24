import 'package:abac_challenge/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DatePickerNotif extends StateNotifier<DateTime> {
  DatePickerNotif()
      : super(DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));

  void setDay(DateTime selectedDate) {
    state = selectedDate;
    logger.i('date set: $state');
  }

  void setHour(int hour) {
    // Update the time part of the selected date
    final updatedDate = DateTime(
      state.year,
      state.month,
      state.day,
      hour, // Set the selected hour
    );
    state = updatedDate;

    logger.i('hour set: ${state.hour} \n Current set date: $state');
  }

  int getHour() {
    return state.hour;
  }

  bool isHourSelected(int hour) {
    return state.hour == hour;
  }
}

final datePickerProv = StateNotifierProvider<DatePickerNotif, DateTime>(
  (ref) => DatePickerNotif(),
);
