import 'dart:math';

Iterable<T> reverse<T>(List<T> list) => list.reversed;

Iterable<T> reverse2<T>(Iterable<T> list) sync* {
  for (var i = list.length - 1; i >= 0; i--) {
    yield list.elementAt(i);
  }
}

main()
{
  final randoms = Iterable.generate(10, (_) => Random().nextInt(100)).toList();
  print("1 $randoms: ${reverse(randoms)}");
  print("2 $randoms: ${reverse2(randoms)}");
}