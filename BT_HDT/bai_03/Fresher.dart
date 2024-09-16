import 'dart:io';

import 'Employee.dart';

class Fresher extends Employee {
  int? _graduationDate;
  String? _graduationRank;
  String? _education;

  @override
  int getEmpType() => 1;

  @override
  void input() {
    // TODO: implement input
    super.input();
    print("GraduationDate: ");
    this._graduationDate = int.parse(stdin.readLineSync()!);
    print("GraduationRank: ");
    this._graduationRank = stdin.readLineSync()!;
    print("Education: ");
    this._education = stdin.readLineSync()!;
  }

  @override
  void output() {
    print("# FRESHER");
    // TODO: implement output
    super.output();
    print("- GraduationDate: $_graduationDate");
    print("- GraduationRank: $_graduationRank");
    print("- Education: $_education\n");
  }
}
