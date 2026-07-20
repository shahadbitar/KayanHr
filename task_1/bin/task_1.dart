import 'dart:io';

class Student {
  String id;
  String name;
  int age;
  Student(this.id,this.name,this.age);

  @override
  String toString(){
    return "ID: $id , Name: $name , Age: $age";
  }
}

class StudentManagement {
  List<Student> students = [];

  void addStudents(String id, String name, int age) {
    students.add(Student(id, name, age));
    print("Student added succesfully");
  }

  void removeStudents(String id) {
    bool existed = students.any((s) => s.id == id);
    students.removeWhere((s) => s.id == id);
    if (existed) {
      print("Student removed");
    }
    else {
      print("Student not found");
    }
  }

  void searchStudents(String id) {
    var result = students.where((s) => s.id == id);
    if (result.isNotEmpty) {
      print("${result.first}");
    }
    else {
      print("Student not found");
    }
  }

  void printAllStudents() {
    if (students.isEmpty) {
      print("No student yet");
      return;   // ← this stops the function here
    }
    print("All Students");
    for (var s in students) {
      print(s);
    }
  }
}
void main(){
  StudentManagement management = StudentManagement();
  bool running = true;

  while (running) {
    print("\n===== Student Management System =====");
    print("1. Add Student");
    print("2. Remove Student");
    print("3. Search Student");
    print("4. Print All Students");
    print("5. Exit");
    stdout.write("Choose an option:");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write("Enter ID:");
        String id = stdin.readLineSync() ?? "";
        stdout.write("Enter Name:");
        String name = stdin.readLineSync() ?? "";
        stdout.write("Enter Age");
        int age = int.tryParse(stdin.readLineSync() ?? "") ?? 0;
        management.addStudents(id, name, age);
        break;

      case '2':
        stdout.write("Enter ID to remove:");
        String id = stdin.readLineSync() ?? "";
        management.removeStudents(id);
        break;

      case '3':
        stdout.write("Enter ID to search:");
        String id = stdin.readLineSync() ?? "";
        management.searchStudents(id);
        break;

      case '4':
        management.printAllStudents();
        break;

      case '5':
        running = false;
        print("Exiting");
        break;

      default:
        print("Invalid Option,try again");
    }
  }
}
