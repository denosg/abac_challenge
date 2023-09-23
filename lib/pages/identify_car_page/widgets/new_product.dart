import 'package:abac_challenge/pages/identify_car_page/providers/cart_prov.dart';
import 'package:abac_challenge/pages/identify_car_page/providers/new_cart_prov.dart';
import 'package:abac_challenge/pages/identify_car_page/widgets/amount_produs_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewProduct extends HookConsumerWidget {
  const NewProduct({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final modalFormKey = useState(GlobalKey<FormState>());

    final deviceSize = MediaQuery.of(context).size;

    final cartProdus = ref.read(newCartProv);

    final ColorScheme colors = Theme.of(context).colorScheme;

    Future<void> saveForm() async {
      final isValid = modalFormKey.value.currentState?.validate();
      if (isValid == false || isValid == null) {
        return;
      }
      modalFormKey.value.currentState?.save();
      try {
        final cartProdus = ref.read(newCartProv);

        final isItemInCartList =
            ref.read(cartProvider.notifier).isItemInList(cartProdus!.id);

        if (isItemInCartList) {
          ref.read(cartProvider.notifier).changeQuantity(
              itemId: cartProdus.id, quantity: cartProdus.quantity);
        } else {
          ref.read(cartProvider.notifier).addItem(cartProdus);
        }
      } catch (e) {
        rethrow;
      }
      ref.read(newCartProv.notifier).setCartProv(null);
      Navigator.of(context).pop();
    }

    return Container(
      padding: EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
          bottom: MediaQuery.of(context).viewInsets.bottom + 10),
      child: Form(
        key: modalFormKey.value,
        child: ListView(
          children: [
            // title of particular item
            Container(
                width: deviceSize.width * 0.8,
                padding: EdgeInsets.all(deviceSize.width * 0.03),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.grey[300]),
                child: Center(
                  child: Text(
                    cartProdus!.produs.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                )),
            // amount of the item
            const SizedBox(height: 20),
            const Text('Introduceți cantitatea:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            const SizedBox(height: 5),
            const AmountProdusForm(),
            // Save button
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: saveForm,
              style: ElevatedButton.styleFrom(backgroundColor: colors.tertiary),
              child: const Text(
                'Adaugă în coș',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
