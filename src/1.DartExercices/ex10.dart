import 'dart:math';

void printMessage(String text, [int repetitions = 1]) {
  for (var i = 0; i < repetitions; i++) {
    print(text);
  }
}

main()
{
    final phrase1 = "The fox jumped over the lazy dog";
    printMessage(phrase1);

    final phrase2 = "lorem ipsum sit amet consectetur adipiscing elit";
    printMessage(phrase2, Random().nextInt(100) + 1);
}