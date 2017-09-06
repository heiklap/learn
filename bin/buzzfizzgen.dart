
//  Gitter  Alexandre Ardhuin @a14n 18:05
//  the functional way for FizzBuzz
// https://dartpad.dartlang.org/a6f264d82e3c5f224c7a9a4afb7d93c6

Iterable<int> get integers sync* {
  int i = 1;
  while (true) yield i++;
}

String toFizzBuzz(int i) =>
    i % 3 == 0 ? "Fizz" : i % 5 == 0 ? "Buzz" : i.toString();

main() => integers.map(toFizzBuzz).take(100).forEach(print);