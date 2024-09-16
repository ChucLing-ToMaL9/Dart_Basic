import 'dart:io';

import 'Employee.dart';

class Experience extends Employee {
  int? _expYear;
  String? _proSkill;

  @override
  int getEmpType() => 0;

  @override
  void input() {
    // TODO: implement input
    super.input();
    print("ExpInYear: ");
    this._expYear = int.parse(stdin.readLineSync()!);
    print("ProSkill: ");
    this._proSkill = stdin.readLineSync()!;
  }

  @override
  void output() {
    // TODO: implement output
    print("# EXPERIENCE");
    super.output();
    print("- ExpInYear: $_expYear");
    print("- ProSkill: $_proSkill\n");
  }
}
