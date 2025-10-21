import 'dart:math';

Iterable<String> fizzBuzz(int number) sync*
{
  for (int i = 1; i <= number; i++)
  {
    bool isFizzOrBuzz=false;
    var output = "";
    if (i % 3 == 0)
    {
      isFizzOrBuzz = true;
      output = "Fizz";
    }

    if (i % 5 == 0)
    {
      isFizzOrBuzz = true;
      output += "Buzz";
    }

    if (!isFizzOrBuzz) {
      output = i.toString();
    }

    yield output;
  }
}

Iterable<String> fizzBuzz_AI(int number) sync* {
  for (int i = 1; i <= number; i++) {
    final fizz = i % 3 == 0 ? "Fizz" : "";
    final buzz = i % 5 == 0 ? "Buzz" : "";
    final combined = fizz + buzz;
    yield combined.isEmpty ? i.toString() : combined;
  }
}

main()
{
  int random = Random().nextInt(100) + 1;
  print("$random: ${fizzBuzz(random).join(",")}");
  print("AI $random: ${fizzBuzz_AI(random).join(",")}");
}