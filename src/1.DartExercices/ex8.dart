Map<String, int> countLetters(String phrase) =>
  phrase.toLowerCase().split(' ').toSet().fold(<String, int>{}, (map, key) {
    map.update(key, (x) => x + key.length, ifAbsent: () => key.length);
    return map;
  });

Map<String, int> countLetters_AI(String phrase) {
  final words = phrase
      .toLowerCase()
      .replaceAll(RegExp(r'[^\w\sÀ-ÿ]'), '') // remove punctuation
      .split(RegExp(r'\s+'))
      .toSet();

  final Map<String, int> counts = {};

  for (final word in words) {
    if (word.isEmpty) continue;
    counts.update(word, (value) => value + word.length, ifAbsent: () => word.length);
  }

  return counts;
}

main()
{
  final phrase = "The fox jumped over the lazy dog";
  print("$phrase: ${countLetters(phrase)}");
  print("AI: $phrase: ${countLetters_AI(phrase)}");
}