import 'dart:io';

import 'Experience.dart';
import 'Fresher.dart';
import 'Intern.dart';
import 'Employee.dart';

class ListEmployee {
  int? _quantity;
  int? _type;

  List<Employee> _lstEmp = [];
  ListEmployee(this._lstEmp);

  void input_Emp() {
    print("Total Employee: ");
    this._quantity = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < this._quantity!; i++) {
      print("EMPLOYEE TYPE\n\t0. Experience\t\t1. Fresher\t2. Intern");
      this._type = int.parse(stdin.readLineSync()!);

      Employee? emp;

      if (this._type == 0) {
        emp = Experience();
      } else if (this._type == 1) {
        emp = Fresher();
      } else if (this._type == 2) {
        emp = Intern();
      } else {
        print("Dữ liệu nhập không hợp lệ.");
      }

      emp!.input();
      _lstEmp.add(emp);
    }
  }

  void output_Emp() {
    for (int i = 0; i < _lstEmp.length; i++) {
      _lstEmp[i].output();
    }
  }

  void addEmp(int soLuong) {
    for (int i = 0; i < soLuong; i++) {
      print("EMPLOYEE TYPE\n\t0. Experience\t\t1. Fresher\t2. Intern");
      int type = int.parse(stdin.readLineSync()!);

      Employee? emp;

      if (type == 0) {
        emp = Experience();
      } else if (type == 1) {
        emp = Fresher();
      } else if (type == 2) {
        emp = Intern();
      } else {
        print("Dữ liệu nhập không hợp lệ.");
      }

      emp!.input();
      _lstEmp.add(emp);

      print("Thêm dữ liệu thành công.");
    }
  }

  void deleteEmp(int id) {
    for (int i = 0; i < _lstEmp.length; i++) {
      if (_lstEmp[i].getID() == id) {
        _lstEmp.remove(_lstEmp[i]);
        print("Xóa dữ liệu thành công.");
      }
    }
  }

  void editEmp(int id) {
    for (int i = 0; i < _lstEmp.length; i++) {
      if (_lstEmp[i].getID() == id) {
        print("New FullName: ");
        String newName = stdin.readLineSync()!;
        print("New BirthDay: ");
        String newBD = stdin.readLineSync()!;
        print("New Phone: ");
        String newPhone = stdin.readLineSync()!;
        print("New Email: ");
        String newEmail = stdin.readLineSync()!;

        _lstEmp[i].setFullName(newName);
        _lstEmp[i].setBD(newBD);
        _lstEmp[i].setPhone(newPhone);
        _lstEmp[i].setEmail(newEmail);

        print("Cập nhật dữ liệu thành công.");
      }
    }
  }

  List<Employee> searchEmp(int loai) {
    List<Employee> lstSearch = []; // widget

    for (int i = 0; i < _lstEmp.length; i++) {
      if (_lstEmp[i].getEmpType() == loai) {
        lstSearch.add(_lstEmp[i]);
      }
    }

    return lstSearch;
  }
}
