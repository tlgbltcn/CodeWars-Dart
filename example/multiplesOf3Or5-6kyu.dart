/*
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

Note: If the number is a multiple of both 3 and 5, only count it once.

Courtesy of ProjectEuler.net
 */

int solution(int n) => List<int>.generate((n<=0) ? 0: n, (i) => i)
    .where((i) => (((i % 3) == 0) || ((i % 5) == 0)))
    .fold(0, (x, y) => x + y);

main() {
  print(solution(-1));
}
