import 'package:test/test.dart';

import 'package:euler/euler.dart';

void main() {
  group(
      'Smallest positive number that is evenly divisible by all of the numbers from 1 to n:',
      () {
    var inputsToExpected = {
      5: 60,
      7: 420,
      10: 2520,
      13: 360360,
      20: 232792560,
    };

    inputsToExpected.forEach((input, expected) {
      test("$input -> $expected", () {
        expect(euler005(input), expected);
      });
    });
  });
}
