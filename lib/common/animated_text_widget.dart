import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final textsProvider = StateNotifierProvider<TextsNotifier, List<String>>((ref) {
  return TextsNotifier();
});

// you can change the shown text here
class TextsNotifier extends StateNotifier<List<String>> {
  TextsNotifier()
      : super([
          'Mașina dumneavoastră se identifică, vă rugăm așteptați.',
          'Multumim pentru așteptare !',
        ]);
}

class AnimatedTextWidget extends HookConsumerWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final texts = ref.watch(textsProvider);
    final index = useState(0);

    final ColorScheme colors = Theme.of(context).colorScheme;

    // start the timer for the texts to display (currently 6 seconds for each text)
    useEffect(() {
      Timer timer;
      timer = Timer.periodic(const Duration(seconds: 4), (timer) {
        if (index.value == texts.length - 1) {
          index.value = texts.length - 1;
        } else {
          index.value = (index.value + 1);
        }
      });
      // timer cancels automatically on dispose
      return () {
        timer.cancel();
      };
    }, const []);

    // (fade) animation effect for text change
    return AnimatedSwitcher(
      duration: const Duration(seconds: 1),
      transitionBuilder: (child, animation) =>
          FadeTransition(opacity: animation, child: child),
      child: Text(
        texts[index.value],
        style: TextStyle(
          color: colors.secondary,
          fontWeight: FontWeight.bold,
          fontSize: 28,
        ),
        key: ValueKey(index.value),
      ),
    );
  }
}
