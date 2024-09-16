import 'dart:io';

import 'Employee.dart';

class Intern extends Employee {
  String? _majors;
  String? _semester;
  String? _universityName;

  @override
  int getEmpType() => 2;

  @override
  void input() {
    // TODO: implement input
    super.input();
    print("Majors: ");
    this._majors = stdin.readLineSync()!;
    print("Semester: ");
    this._semester = stdin.readLineSync()!;
    print("UniversityName: ");
    this._universityName = stdin.readLineSync()!;
  }

  @override
  void output() {
    print("# INTERN");
    // TODO: implement output
    super.output();
    print("- Majors: $_majors");
    print("- Semester: $_semester");
    print("- UniversityName: $_universityName\n");
  }
}
