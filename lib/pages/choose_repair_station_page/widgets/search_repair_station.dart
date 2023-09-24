import 'package:abac_challenge/pages/identify_car_page/providers/search_prov.dart';
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
            ref.read(searchQueryProvider.notifier).updateQuery(query);
          },
        ),
      ),
    );
  }
}
