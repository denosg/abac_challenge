import 'package:abac_challenge/models/dummy_list.dart';
import 'package:abac_challenge/pages/choose_repair_station_page/providers/repair_station_search_prov.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchRepairStation extends HookConsumerWidget {
  const SearchRepairStation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    return Container(
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
            final searchList = repairStationList.where((repairStation) {
              if (query != '') {
                final searchQuery = query.toLowerCase();
                return repairStation.title.toLowerCase().contains(searchQuery);
              }
              return true;
            }).toList();
            ref
                .read(repairStationSearchPod.notifier)
                .setRepairStationList(searchList);
          },
        ),
      ),
    );
  }
}
