import 'package:abac_challenge/models/dummy_list.dart';
import 'package:abac_challenge/models/repair_station/repair_station.dart';
import 'package:abac_challenge/pages/choose_date_page/providers/final_cart_prov.dart';
import 'package:abac_challenge/pages/choose_repair_station_page/widgets/repair_station_widget.dart';
import 'package:abac_challenge/pages/identify_car_page/providers/search_prov.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RepairStationListView extends HookConsumerWidget {
  const RepairStationListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchQuery = ref.watch(searchQueryProvider);

    final deviceSize = MediaQuery.of(context).size;

    final repairStations = useState<List<RepairStation>>(repairStationList);

    repairStations.value = repairStationList.where((repairStation) {
      if (searchQuery != null) {
        final query = searchQuery.toLowerCase();
        return repairStation.title.toLowerCase().contains(query);
      }
      return true;
    }).toList();

    return Expanded(
      child: ListView(
        children: repairStations.value.map((repairStation) {
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
    );
  }
}
