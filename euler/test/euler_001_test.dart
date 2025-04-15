import 'package:test/test.dart';

import 'package:euler/euler.dart';

void main() {
  group('The sum of multiples of 3 or 5 below n:', () {
    var inputsToExpected = {
      1000: 233168,
      49: 543,
      8456: 16687353,
      19564: 89301183,
    };

    inputsToExpected.forEach((input, expected) {
      test("$input -> $expected", () {
        expect(euler001(input), expected);
      });
    });
  });
}
