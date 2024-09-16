import 'dart:io';

import 'DSPhuongTien.dart';
import 'PhuongTien.dart';

void main() {
  List<PhuongTien> _dsXe = [];
  Dsphuongtien? pt = Dsphuongtien(_dsXe);

  pt.nhapDSXe();
  pt.xuatDSXe();

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
      print("Số lượng xe: ");
      int soLuong = int.parse(stdin.readLineSync()!);

      pt.themPhuongTien(soLuong);
      print("\nDANH SÁCH XE SAU KHI THÊM");
      pt.xuatDSXe();
    }
    if (chon == 2) {
      print("ID xe cần xóa: ");
      int id = int.parse(stdin.readLineSync()!);

      pt.xoaPhuongTienTheoID(id);
      print("\nDANH SÁCH XE SAU KHI XÓA");
      pt.xuatDSXe();
    }
    if (chon == 3) {
      print("Hãng xe cần tìm: ");
      String hangXe = stdin.readLineSync()!;

      Dsphuongtien xeCanTim = Dsphuongtien(pt.timPTTheoHang(hangXe));
      print("\nDANH SÁCH XE THEO HÃNG XE");
      xeCanTim.xuatDSXe();
    }
    if (chon == 4) {
      print("Màu xe cần tìm: ");
      String mau = stdin.readLineSync()!;

      Dsphuongtien xeCanTim = Dsphuongtien(pt.timPTTheoMau(mau));
      print("\nDANH SÁCH XE THEO MÀU XE");
      xeCanTim.xuatDSXe();
    }
  } while (chon > -1 && chon < 5);
}

void menu() {
  print("______________MENU_______________");
  print("1. Thêm số lượng phương tiện.");
  print("2. Xóa phương tiện theo ID.");
  print("3. Tìm phương tiện theo hãng sản xuất.");
  print("4. Tìm phương tiện theo màu.");
  print("0. Thoát chương trình.");
}
