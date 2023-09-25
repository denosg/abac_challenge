import 'package:abac_challenge/common/car_showcase_widget.dart';
import 'package:abac_challenge/pages/choose_date_page/providers/final_cart_prov.dart';
import 'package:abac_challenge/pages/choose_repair_station_page/widgets/action_buttons_row_repair.dart';
import 'package:abac_challenge/pages/choose_repair_station_page/widgets/repair_station_list_view.dart';
import 'package:abac_challenge/pages/choose_repair_station_page/widgets/search_repair_station.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class ChooseRepairStationPage extends ConsumerWidget {
  static const routeName = 'choose-repair-station-page';

  const ChooseRepairStationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateTime = ref.read(finalCartProv).dateTime;

    final deviceSize = MediaQuery.of(context).size;

    final formatter = DateFormat('dd.MM.yyyy HH:mm');

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Text(
              formatter.format(dateTime!).toString(),
              style: const TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: deviceSize.height * 0.15,
              child: const CarShowcaseWidget(),
            ),
            const SizedBox(height: 20),
            const Text(
              'Ofertanți',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SearchRepairStation(),
            const Expanded(child: RepairStationListView()),
            const ActionButtonsRowRepair()
          ],
        ),
      ),
    );
  }
}
