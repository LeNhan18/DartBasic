import 'dart:io';

class Student {
  int id;
  String name;
  int age;

  Student(this.id, this.name, this.age);

  @override
  String toString() => 'ID: \$id, Name: \$name, Age: \$age';
}

class StudentManager {
  final List<Student> _students = [];

  void addStudent(int id, String name, int age) {
    _students.add(Student(id, name, age));
  }

  void removeStudent(int id) {
    _students.removeWhere((student) => student.id == id);
  }

  void updateStudent(int id, {String? name, int? age}) {
    for (var student in _students) {
      if (student.id == id) {
        if (name != null) student.name = name;
        if (age != null) student.age = age;
      }
    }
  }

  void displayStudents() {
    if (_students.isEmpty) {
      print("Không có sinh viên nào trong danh sách.");
      return;
    }
    for (var student in _students) {
      print(student);
    }
  }
}

void main() {
  var manager = StudentManager();
  while (true) {
    print("\nChọn thao tác:");
    print("1. Thêm sinh viên");
    print("2. Xóa sinh viên");
    print("3. Cập nhật sinh viên");
    print("4. Hiển thị danh sách");
    print("5. Thoát");

    stdout.write("Nhập lựa chọn: ");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        stdout.write("Nhập ID: ");
        int id = int.parse(stdin.readLineSync()!);
        stdout.write("Nhập tên: ");
        String name = stdin.readLineSync()!;
        stdout.write("Nhập tuổi: ");
        int age = int.parse(stdin.readLineSync()!);
        manager.addStudent(id, name, age);
        break;
      case 2:
        stdout.write("Nhập ID cần xóa: ");
        int id = int.parse(stdin.readLineSync()!);
        manager.removeStudent(id);
        break;
      case 3:
        stdout.write("Nhập ID cần cập nhật: ");
        int id = int.parse(stdin.readLineSync()!);
        stdout.write("Nhập tên mới (bấm Enter để bỏ qua): ");
        String name = stdin.readLineSync()!;
        stdout.write("Nhập tuổi mới (bấm Enter để bỏ qua): ");
        String ageInput = stdin.readLineSync()!;
        manager.updateStudent(id, name: name.isEmpty ? null : name, age: ageInput.isEmpty ? null : int.parse(ageInput));
        break;
      case 4:
        print("\nDanh sách sinh viên:");
        manager.displayStudents();
        break;
      case 5:
        print("Thoát chương trình.");
        return;
      default:
        print("Lựa chọn không hợp lệ.");
    }
  }
}
