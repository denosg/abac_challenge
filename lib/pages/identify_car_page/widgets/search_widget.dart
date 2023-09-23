import 'package:abac_challenge/models/dummy_list.dart';
import 'package:abac_challenge/pages/identify_car_page/providers/cart_prov.dart';
import 'package:abac_challenge/pages/identify_car_page/providers/search_prov.dart';
import 'package:abac_challenge/pages/identify_car_page/widgets/cart_template_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchWidget extends ConsumerWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchQuery = ref.watch(searchQueryProvider);

    final ColorScheme colors = Theme.of(context).colorScheme;

    final deviceSize = MediaQuery.of(context).size;

    final filteredProducts = productList.where((produs) {
      if (searchQuery != null) {
        final query = searchQuery.toLowerCase();
        return produs.name.toLowerCase().contains(query);
      }
      return false;
    }).toList();

    return Stack(children: [
      Column(
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
                  hintText: 'Caută produse...',
                  border: InputBorder.none,
                ),
                onChanged: (query) {
                  ref.read(searchQueryProvider.notifier).updateQuery(query);
                },
              ),
            ),
          ),
          const SizedBox(height: 15),
          const CartTempWidget(),
        ],
      ),
      if (searchQuery != null && searchQuery.isNotEmpty) ...[
        Container(
            margin: const EdgeInsets.only(top: 50),
            height: filteredProducts.length * 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Colors.grey[100],
            ),
            child: ListView(
              children: filteredProducts
                  .map((product) => Column(
                        children: [
                          SizedBox(
                            height: 50,
                            child: ListTile(
                              title: Text(product.name),
                              subtitle:
                                  Text('Price: ${product.price.toString()}'),
                              onTap: () {
                                ref
                                    .read(searchQueryProvider.notifier)
                                    .updateQuery(null);
                                CartNotifier.addOrEditProduct(
                                    context, ref, product, null);
                                FocusScope.of(context).unfocus();
                              },
                            ),
                          ),
                          SizedBox(
                              width: deviceSize.width * 0.6,
                              child: const Divider()),
                        ],
                      ))
                  .toList(),
            )),
      ],
    ]);
  }
}
