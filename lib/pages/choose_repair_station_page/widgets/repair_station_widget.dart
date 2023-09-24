import 'package:abac_challenge/models/repair_station/repair_station.dart';
import 'package:abac_challenge/pages/choose_date_page/providers/final_cart_prov.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RepairStationWidget extends ConsumerWidget {
  final RepairStation repairStaition;

  final bool isSelected;

  const RepairStationWidget(
      {super.key, required this.repairStaition, required this.isSelected});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () =>
          ref.read(finalCartProv.notifier).setRepairStation(repairStaition),
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? Colors.grey : Colors.transparent,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Card(
          elevation: isSelected ? 15 : 5,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(12.0), // Adjust the radius as needed
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 7),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        repairStaition.title,
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.yellow),
                          const SizedBox(width: 4),
                          Text(
                            '${repairStaition.rating}',
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 3),
                  Text(
                    'Timp: ${repairStaition.time} ore.',
                    style: const TextStyle(fontSize: 10),
                  ),
                  const Spacer(),
                  Text(
                    'Cost estimat: ${repairStaition.price} RON',
                    style: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                child: Image.asset(
                  repairStaition.picture,
                  fit: BoxFit.contain,
                  width: 100,
                ),
              ),
              const SizedBox(width: 1)
            ],
          ),
        ),
      ),
    );
  }
}
