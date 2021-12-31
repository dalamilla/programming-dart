/// 2520 is the smallest number that can be divided by each of  the numbers from
/// 1 to 10 without any remainder.
/// What is the smallest positive number that is evenly divisible by all of the
/// numbers from 1 to 20?
library euler;

/// Solution of fifth Euler problem.
/// The function take the value [n] to limit the number for evenly divisible positive.
/// Returns the smallest positive number [number] that is evenly divisible by all of the numbers from 1 to [n].
num euler005(num n) {
  bool found = true;
  num number = 0;

  while (found) {
    num i = 1;
    number += n;

    while (number % i == 0 && i <= n) {
      if (i == n) {
        found = false;
      }
      i++;
    }
  }

  return number;
}
