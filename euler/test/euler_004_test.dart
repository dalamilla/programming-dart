import 'package:test/test.dart';

import 'package:euler/euler.dart';

void main() {
  group('The largest palindrome made from the product of two n-digit numbers:',
      () {
    var inputsToExpected = {
      2: 9009,
      3: 906609,
    };

    inputsToExpected.forEach((input, expected) {
      test("$input -> $expected", () {
        expect(euler004(input), expected);
      });
    });
  });
}
