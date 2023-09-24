import 'package:abac_challenge/models/dummy_list.dart';
import 'package:abac_challenge/models/repair_station/repair_station.dart';
import 'package:abac_challenge/pages/choose_repair_station_page/widgets/repair_station_widget.dart';
import 'package:abac_challenge/pages/identify_car_page/providers/search_prov.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchRepairStation extends HookConsumerWidget {
  const SearchRepairStation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchQuery = ref.watch(searchQueryProvider);

    final ColorScheme colors = Theme.of(context).colorScheme;

    final deviceSize = MediaQuery.of(context).size;

    final repairStations = useState<List<RepairStaition>>(repairStationList);

    repairStations.value = repairStationList.where((repairStation) {
      if (searchQuery != null) {
        final query = searchQuery.toLowerCase();
        return repairStation.title.toLowerCase().contains(query);
      }
      return true;
    }).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: Colors.grey[200],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              cursorColor: colors.tertiary,
              decoration: InputDecoration(
                prefixIcon: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    colors.tertiary,
                    BlendMode.srcIn,
                  ),
                  child: const Icon(Icons.search),
                ),
                hintText: 'Caută ofertanți...',
                border: InputBorder.none,
              ),
              onChanged: (query) {
                ref.read(searchQueryProvider.notifier).updateQuery(query);
              },
            ),
          ),
        ),
        SizedBox(
          height: 350,
          child: ListView(
            children: repairStations.value
                .map((repairStation) => SizedBox(
                      width: deviceSize.width * 0.7,
                      height: 100,
                      child: RepairStationWidget(repairStaition: repairStation),
                    ))
                .toList(),
          ),
        )
      ],
    );
  }
}
