Iterable<T> exclude<T>(Iterable<T> left, Iterable<T> right) => left.where((x) => !right.contains(x)).toSet();

main()
{
  final list1 = {1, 2, 3};
  final list2 = {2, 3, 4};
  print("$list1, $list2: ${exclude(list1, list2)}");
}