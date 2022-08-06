class ExpensiveFibonacciCounter {
  Future<int> calculcateFibonacciFor(int number) async {
    if (number <= 1) {
      return 1;
    }
    return Future.microtask(() async {
      return await calculcateFibonacciFor(number - 1) +
          await calculcateFibonacciFor(number - 2);
    });
  }
}
