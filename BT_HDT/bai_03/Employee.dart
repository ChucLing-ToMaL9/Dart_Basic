import 'dart:io';

class Employee {
  int? _id;
  String? _fullName;
  String? _birthDay;
  String? _phone;
  String? _email;
  int? _empType;

  int getID() => this._id!;
  int getEmpType() => this._empType!;

  void setFullName(String newName) {
    this._fullName = newName;
  }

  void setBD(String newBD) {
    this._birthDay = newBD;
  }

  void setPhone(String newPhone) {
    this._phone = newPhone;
  }

  void setEmail(String newEmail) {
    this._email = newEmail;
  }

  void input() {
    print("Id: ");
    this._id = int.parse(stdin.readLineSync()!);
    print("FullName: ");
    this._fullName = stdin.readLineSync()!;
    print("BirthDay: ");
    this._birthDay = stdin.readLineSync()!;
    print("Phone: ");
    this._phone = stdin.readLineSync()!;
    print("Email: ");
    this._email = stdin.readLineSync()!;
  }

  void output() {
    print("------------INFORMATION------------");
    print("- ID: $_id");
    print("- FullName: $_fullName");
    print("- BirthDay: $_birthDay");
    print("- Phone: $_phone");
    print("- Email: $_email");
  }
}
