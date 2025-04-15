import 'package:test/test.dart';

import 'package:euler/euler.dart';

void main() {
  group('The largest prime factor of n:', () {
    var inputsToExpected = {
      2: 2,
      3: 3,
      5: 5,
      7: 7,
      8: 2,
      13195: 29,
      600851475143: 6857,
    };

    inputsToExpected.forEach((input, expected) {
      test("$input -> $expected", () {
        expect(euler003(input), expected);
      });
    });
  });
}
