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
