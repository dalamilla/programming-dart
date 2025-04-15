import 'package:test/test.dart';

import 'package:euler/euler.dart';

void main() {
  group('The sum of even Fibonacci numbers below n:', () {
    var inputsToExpected = {
      8: 10,
      10: 10,
      34: 44,
      60: 44,
      1000: 798,
      100000: 60696,
      4000000: 4613732,
    };

    inputsToExpected.forEach((input, expected) {
      test("$input -> $expected", () {
        expect(euler002(input), expected);
      });
    });
  });
}
