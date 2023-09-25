import 'package:abac_challenge/models/repair_station/repair_station.dart';
import 'package:abac_challenge/pages/choose_repair_station_page/providers/repair_station_search_prov.dart';
import 'package:abac_challenge/pages/choose_repair_station_page/providers/selected_order_prov.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SortRepairStationsWdiget extends HookConsumerWidget {
  const SortRepairStationsWdiget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceSize = MediaQuery.of(context).size;

    final isSelected = ref.watch(selectedOrderPod);

    void setSortType(String type) {
      final repairList = ref.read(repairStationSearchPod);
      ref.read(selectedOrderPod.notifier).setSortType(type);

      List<RepairStation> currentList = [...repairList];

      switch (type) {
        case 'rating':
          currentList.sort((a, b) => b.rating.compareTo(a.rating));
          break;
        case 'preț':
          currentList.sort((a, b) => a.price.compareTo(b.price));
          break;
        case 'timp':
          currentList.sort((a, b) => a.time.compareTo(b.time));
          break;
      }
      ref
          .read(repairStationSearchPod.notifier)
          .setRepairStationList(currentList);
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(width: deviceSize.width * 0.1),
        SortType(
            type: 'preț',
            isSelected: isSelected == 'preț',
            onTap: () => setSortType('preț')),
        SortType(
            type: 'rating',
            isSelected: isSelected == 'rating',
            onTap: () => setSortType('rating')),
        SortType(
            type: 'timp',
            isSelected: isSelected == 'timp',
            onTap: () => setSortType('timp')),
        SizedBox(width: deviceSize.width * 0.1),
      ],
    );
  }
}

class SortType extends ConsumerWidget {
  final String type;
  final bool isSelected;
  final Function() onTap;
  const SortType(
      {super.key,
      required this.type,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceSize = MediaQuery.of(context).size;

    final ColorScheme colors = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: isSelected
          ? () => ref.read(selectedOrderPod.notifier).setSortType(null)
          : onTap,
      child: Column(
        children: [
          Container(
            width: deviceSize.width * 0.2,
            height: deviceSize.height * 0.04,
            decoration: BoxDecoration(
              color: isSelected ? colors.tertiary : Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: isSelected ? Colors.white : Colors.black,
                width: 2.0,
              ),
            ),
            child: Center(
              child: Text(
                type,
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
