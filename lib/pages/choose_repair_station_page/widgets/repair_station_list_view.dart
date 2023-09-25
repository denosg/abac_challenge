import 'package:abac_challenge/pages/choose_date_page/providers/final_cart_prov.dart';
import 'package:abac_challenge/pages/choose_repair_station_page/providers/repair_station_search_prov.dart';
import 'package:abac_challenge/pages/choose_repair_station_page/widgets/repair_station_widget.dart';
import 'package:abac_challenge/pages/choose_repair_station_page/widgets/sort_repair_stations_wdiget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RepairStationListView extends HookConsumerWidget {
  const RepairStationListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceSize = MediaQuery.of(context).size;

    final repairStations = ref.watch(repairStationSearchPod);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 5),
        const SortRepairStationsWdiget(),
        Flexible(
          child: ListView(
            children: repairStations.map((repairStation) {
              final isSelected =
                  ref.watch(finalCartProv).repairStaition == repairStation
                      ? true
                      : false;

              return SizedBox(
                  width: deviceSize.width * 0.7,
                  height: 100,
                  child: RepairStationWidget(
                    repairStaition: repairStation,
                    isSelected: isSelected,
                  ));
            }).toList(),
          ),
        ),
      ],
    );
  }
}
