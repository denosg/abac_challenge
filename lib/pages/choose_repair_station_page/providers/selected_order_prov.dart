import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectedOrderNotif extends StateNotifier<String?> {
  SelectedOrderNotif() : super(null);

  void setSortType(String? type) {
    state = type;
  }
}

final selectedOrderPod = StateNotifierProvider<SelectedOrderNotif, String?>(
  (ref) => SelectedOrderNotif(),
);
