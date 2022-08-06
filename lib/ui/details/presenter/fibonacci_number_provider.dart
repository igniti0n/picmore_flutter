import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:picmore/domain/expensive_fibonaccy_counter.dart';

final fibonacciNumberProvider =
    StateNotifierProvider.autoDispose<FibonacciNotifier, int>((ref) {
  return FibonacciNotifier();
});

class FibonacciNotifier extends StateNotifier<int> {
  FibonacciNotifier() : super(0);

  final counter = ExpensiveFibonacciCounter();

  void countFibonacciForNumber(int number) async {
    log('Counting fibonacci: $number');
    Stopwatch stopwatch = new Stopwatch()..start();
    final result = await counter.calculcateFibonacciFor(number);
    state = result;
    print('Executed in ${stopwatch.elapsed}');
    stopwatch.stop();
  }
}
