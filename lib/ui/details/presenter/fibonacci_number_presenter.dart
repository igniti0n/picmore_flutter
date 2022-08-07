import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:picmore/domain/expensive_fibonaccy_counter.dart';

final fibonacciNumberPresenter =
    StateNotifierProvider.autoDispose<FibonacciNumberPresenter, int>((ref) {
  return FibonacciNumberPresenter();
});

class FibonacciNumberPresenter extends StateNotifier<int> {
  FibonacciNumberPresenter() : super(0);

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
