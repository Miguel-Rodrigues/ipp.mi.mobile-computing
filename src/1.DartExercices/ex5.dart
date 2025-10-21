import 'dart:math';

Iterable<T> join<T>(Iterable<T> left, Iterable<T> right) => left.where(right.contains).toSet();

main()
{
  final randoms = Iterable.generate(30, (_) => Random().nextInt(100)).toList();
  final randoms2 = Iterable.generate(30, (_) => Random().nextInt(100)).toList();
  print("$randoms, $randoms2: ${join(randoms, randoms2)}");
}