import "ex11.dart";

class PostGraduationStudent extends Student
{
  PostGraduationStudent(String name, int grade, String thesisTheme) : super(name, grade)
  {
    this.name = name;
    this.grade = grade;
    this.thesisTheme = thesisTheme;
  }

  String _thesisTheme = "";
  String get thesisTheme => _thesisTheme;
  set thesisTheme(String value) => _thesisTheme = value;

  @override
  showGrade()
  {
    print("Student: $name, Grade: $grade, Thesis theme: \"$thesisTheme\"");
  }
}

main()
{
  var student1 = PostGraduationStudent("Joaquim da Horta", 10, "How to dig potatoes.");
  student1.showGrade();

  try
  {
    PostGraduationStudent("Raimundo Garcia", -1, "What's the meaning of life?"); //Should throw error
  }
  catch (ex)
  {
    print(ex);
  }

  try
  {
    PostGraduationStudent("Edemar Delgado", 21, "Why Martians want to blow Earth and their benefits."); //Should throw error
  }
  catch (ex)
  {
    print(ex);
  }
}