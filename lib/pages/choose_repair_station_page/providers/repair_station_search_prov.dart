import 'package:abac_challenge/models/dummy_list.dart';
import 'package:abac_challenge/models/repair_station/repair_station.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RepairStationSearchNotif extends StateNotifier<List<RepairStation>> {
  RepairStationSearchNotif() : super(repairStationList);

  void setRepairStationList(List<RepairStation> newRepairStation) {
    state = [...newRepairStation];
  }
}

final repairStationSearchPod =
    StateNotifierProvider<RepairStationSearchNotif, List<RepairStation>>(
  (ref) => RepairStationSearchNotif(),
);
