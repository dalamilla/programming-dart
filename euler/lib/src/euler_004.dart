/// A palindromic number reads the same both ways. The largest palindrome made from
/// the product of two 2-startDigit numbers is 9009 = 91 × 99.
/// Find the largest palindrome made from the product of two 3-startDigit numbers.
library euler;

import "dart:math";

/// Solution of fourth Euler problem.
/// The function take the value [n] to limit the number of digits.
/// Returns the largest palindrome made [max] from the product of two n-startDigit numbers.
num euler004(num n) {
  num startDigit = pow(10, n - 1);
  num endDigit = pow(10, n);
  num max = 0;

  for (num i = startDigit; i < endDigit; i++) {
    for (num j = startDigit; j < endDigit; j++) {
      if (isPalindrome(i * j) && i * j > max) {
        max = i * j;
      }
    }
  }

  return max;
}

/// Helper function of fourth Euler problem.
/// The function take the value [n] to check if is a palindrome.
/// Returns true if the number is a palindrome.
bool isPalindrome(num n) {
  String pali = n.toString();
  return pali == pali.split("").reversed.join();
}
