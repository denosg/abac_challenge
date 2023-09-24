import 'package:abac_challenge/models/repair_station/repair_station.dart';
import 'package:flutter/material.dart';

class RepairStationWidget extends StatelessWidget {
  final RepairStaition repairStaition;

  const RepairStationWidget({super.key, required this.repairStaition});

  @override
  Widget build(BuildContext context) {
    return Card(
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
                style:
                    const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
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
    );
  }
}
