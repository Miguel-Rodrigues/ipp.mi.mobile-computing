import 'dart:math';

int sumOfEvens(Iterable<int> numbers)
{
  int result = 0;
  for (int number in numbers) {
    result += number % 2 == 0 ? number : 0;
  }

  return result;
}

int sumOfEvens_AI(List<int> numbers) =>
  numbers.where((n) => n.isEven).fold(0, (sum, n) => sum + n);

main()
{
  final randoms = Iterable.generate(10, (_) => Random().nextInt(100)).toList();
  print("$randoms: ${sumOfEvens(randoms)}");
  print("AI $randoms: ${sumOfEvens_AI(randoms)}");
}