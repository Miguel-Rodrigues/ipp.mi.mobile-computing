Map<String, int> countWords(Iterable<String> words) =>
  words.fold(<String, int>{}, (map, key) {
    map.update(key, (x) => x + 1, ifAbsent: () => 1);
    return map;
  });

Map<String, int> countWords_AI(List<String> words) {
  final Map<String, int> count = {};

  for (final word in words) {
    count.update(word, (currentValue) => currentValue + 1, ifAbsent: () => 1);
  }

  return count;
}

main()
{
  final words = ['maçã', 'banana', 'maçã'];
  print("$words: ${countWords(words)}");
  print("AI: $words: ${countWords_AI(words)}");
} 