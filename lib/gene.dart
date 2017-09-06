



//   dartpad  8be086652cebd7802498

Iterable<int> get integers sync* {
  int i = 1;
  while (true) yield i++;
}

String toFizzBuzz(int i) =>
    i % 3 == 0 ? "Fizz" : i % 5 == 0 ? "Buzz" : i.toString();

main() => integers.map(toFizzBuzz).take(100).forEach(print);

//
