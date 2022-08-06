import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:picmore/ui/details/presenter/fibonacci_number_provider.dart';

class FibonacciCounter extends ConsumerWidget {
  const FibonacciCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fiboancciResult = ref.watch(fibonacciNumberProvider);

    ref.listen<int>(
      fibonacciNumberProvider,
      (previous, next) {
        log('Updated: ${next}');
      },
    );

    return Column(
      children: [
        TextButton(
          onPressed: () => ref
              .read(fibonacciNumberProvider.notifier)
              .countFibonacciForNumber(33),
          child: Text('Calculate'),
        ),
        Text('${fiboancciResult}')
      ],
    );
  }
}

// 35 -- 0:00:17.954698
// 33 -- 0:00:05.080244
// 30 -- 0:00:01.251956
// 25 -- 0:00:00.161380
// 20 -- 0:00:00.048823
