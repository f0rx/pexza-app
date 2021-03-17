import 'dart:math' as math;

extension NumX<T extends num> on T {
  T decimal(int places) {
    double mod = math.pow(10.0, places);
    return ((this.toDouble() * mod).round().toDouble() / mod) as T;
  }

  bool isBtw(num from, num to) => from < this && to > this;
}
