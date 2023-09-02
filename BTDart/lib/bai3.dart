class Student {
  int id;
  String name;
  String className;
  Student(this.id, this.name, this.className);
}

void main() {
  List<Student> students = [
    Student(1, 'Nguyễn Mạnh Linh', 'K17-Mobile'),
    Student(2, 'Nguyễn Khắc Hùng', 'K17-Mobile'),
    Student(3, 'Lê Đình Linh', 'K17-Mobile'),
    Student(4, 'Đinh Tiên Hoàng', 'K17-Mobile'),
    Student(5, 'Vũ Đình Duẩn', 'K17-Mobile'),
  ];

  for (var student in students) {
    print('ID: ${student.id}');
    print('Name: ${student.name}');
    print('Class: ${student.className}');
    print('\n');
  }
}