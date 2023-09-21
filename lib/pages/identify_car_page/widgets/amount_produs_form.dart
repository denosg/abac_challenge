import 'package:abac_challenge/pages/identify_car_page/providers/new_cart_prov.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AmountProdusForm extends HookConsumerWidget {
  const AmountProdusForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final amount = useState(1);
    final textEditController = useTextEditingController(text: '1');

    void increment() {
      amount.value++;
      textEditController.text = amount.value.toString();
    }

    void decrement() {
      if (amount.value > 0) {
        amount.value--;
        textEditController.text = amount.value.toString();
      }
    }

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.remove),
          onPressed: decrement,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Container(
            width: width * 0.2,
            height: height * 0.07,
            padding: EdgeInsets.all(width * 0.03),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.grey[300]),
            child: Center(
              child: TextFormField(
                controller: textEditController,
                textAlign: TextAlign.center,
                decoration: const InputDecoration.collapsed(
                  hintText: '0',
                  hintStyle: TextStyle(color: Colors.black54),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) => amount.value = int.tryParse(value) ?? 0,
                onSaved: (enteredString) {
                  if (enteredString != null) {
                    ref
                        .read(newCartProv.notifier)
                        .setCartQuantity(int.parse(enteredString));
                  }
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a value';
                  }
                  final number = int.tryParse(value);
                  if (number == null || number < 0) {
                    return 'Invalid number';
                  }
                  return null;
                },
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: increment,
        ),
      ],
    );
  }
}
