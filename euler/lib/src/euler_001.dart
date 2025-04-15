/// If we list all the natural numbers below 10 that are multiples of 3 or 5,
/// we get 3, 5, 6 and 9. The sum of these multiples is 23.
/// Find the sum of all the multiples of 3 or 5 below 1000.
library;

/// Solution of first Euler problem.
/// The function take the value [n] to limit the sum of natural numbers.
/// Returns the summatory [sum] of natural numbers that are multiples of 3 or 5 below [n].
num euler001(num n) {
  num sum = 0;

  for (num i = 0; i < n; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      sum += i;
    }
  }

  return sum;
}
