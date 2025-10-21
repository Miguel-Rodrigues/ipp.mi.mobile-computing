bool isPalindrome(String word)
{
  word = word.toLowerCase();
  for (int start = 0, end = word.length - 1; start <= end; start++, end--) {
    if (word[start] != word[end])
      return false;
  }

  return true;
}

bool isPalindrome_AI(String word)
{
  final normalized = word.toLowerCase();
  final int length = normalized.length;

  return Iterable
    .generate(length ~/ 2)
    .every((i) => normalized[i] == normalized[(length - 1 - i).toInt()]);
}

main()
{
  final words = <String>["test", "arara", "ovo", "Mirim", "madam", "deed", "hipopotomonstrosesquipedaliofobia", "tattarrattat", "detartrated", "hwuuwh" ];
  for (var word in words)
  {
    print("$word: ${isPalindrome(word)} AI:${isPalindrome_AI(word)}");
  }
}
