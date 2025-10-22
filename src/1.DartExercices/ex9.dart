double average(Map<String, int> courseUnits) {
  var sum = courseUnits.values.fold(0, (x, value) => x + value);
  return sum / courseUnits.length;
}

main()
{
  final courseUnits =
  {
    "Computação Móvel": 12,
    "Segurança de Informação e de Software": 14,
    "Programação para Ciência de Dados": 5,
    "Internet das Coisas e Sistemas Embebidos": 17,
    "Aprendizagem Máquina": 9
  };
  print("course units: $courseUnits");
  print("average: ${average(courseUnits)}");
}