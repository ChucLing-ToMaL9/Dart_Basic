import 'dart:io';

import 'Employee.dart';
import 'List_Employee.dart';

void main() {
  List<Employee> emp = [];
  ListEmployee lstEmp = ListEmployee(emp);

  lstEmp.input_Emp();
  lstEmp.output_Emp();

  int chon;

  do {
    menu();

    print("Chọn chương trình: ");
    chon = int.parse(stdin.readLineSync()!);

    if (chon == 0) {
      print("Kết thúc chương trình.");
      return;
    }
    if (chon == 1) {
      print("Số lượng nhân viên cần thêm: ");
      int? soLuong = int.parse(stdin.readLineSync()!);
      lstEmp.addEmp(soLuong);
    }
    if (chon == 2) {
      print("Sửa thông tin nhân viên có id: ");
      int id = int.parse(stdin.readLineSync()!);
      lstEmp.editEmp(id);
    }
    if (chon == 3) {
      print("Xóa thông tin nhân viên có id: ");
      int id = int.parse(stdin.readLineSync()!);
      lstEmp.deleteEmp(id);
    }
    if (chon == 4) {
      print("Loại nhân viên cần tìm\n\t0. Experience\t\t1. Fresher\t2. Intern");
      int loai = int.parse(stdin.readLineSync()!);

      ListEmployee search_emp = ListEmployee(lstEmp.searchEmp(loai));
      print("\nDANH SÁCH NHÂN VIÊN THEO LOẠI $loai");
      search_emp.output_Emp();
    }
    if (chon == 5) {
      lstEmp.output_Emp();
    }
  } while (chon > -1 && chon < 6);
}

void menu() {
  print("______________MENU_______________");
  print("1. Thêm mới nhân viên.");
  print("2. Sửa nhân viên theo id.");
  print("3. Xóa nhân viên viên theo id.");
  print("4. Tìm nhân viên theo loại.");
  print("5. Xuất danh sách nhân viên.");
  print("0. Thoát chương trình.");
}
