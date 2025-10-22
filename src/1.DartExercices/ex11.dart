class Student
{
  Student(String name, int grade)
  {
    this.name = name;
    this.grade = grade;
  }

  String _name = "";
  String get name => _name;
  set name(String value) => _name = value;

  int _grade = 0;
  int get grade => _grade;
  set grade(int value)
  {
    if (value < 0 || value > 20) 
    {
      throw "(Student.grade): Grade must be between 0 and 20. Got: $value";
    }
    _grade = value;
  }

  showGrade() {
    print("Student: $name, Grade: $grade");
  }
}

main()
{
  var student1 = Student("Joaquim da Horta", 10);
  student1.showGrade();

  try
  {
    Student("Raimundo Garcia", -1); //Should throw error
  }
  catch (ex)
  {
    print(ex);
  }

  try
  {
    Student("Edemar Delgado", 21); //Should throw error
  }
  catch (ex)
  {
    print(ex);
  }
}