import 'dart:io';

import 'DSTaiLieu.dart';
import 'TaiLieu.dart';

void main() {
  List<Tailieu> taiLieu = [];
  Dstailieu? dsTL = Dstailieu(taiLieu);

  dsTL.nhapTL();
  dsTL.xuatTL();

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
      print("Số lượng tài liệu cần thêm: ");
      int? soLuong = int.parse(stdin.readLineSync()!);
      dsTL.themTaiLieu(soLuong);
    }
    if (chon == 2) {
      print("Xóa tài liệu có mã: ");
      int ma = int.parse(stdin.readLineSync()!);
      dsTL.xoaTaiLieu(ma);
    }
    if (chon == 3) {
      dsTL.xuatTL();
    }
    if (chon == 4) {
      print("Loại tài liệu cần tìm\n\t1. Sách\t\t2. Tạp chí\t3. Báo");
      int loai = int.parse(stdin.readLineSync()!);

      Dstailieu tlCanTim = Dstailieu(dsTL.timTaiLieu(loai));
      print("\nDANH SÁCH TÀI LIỆU THEO LOẠI $loai");
      tlCanTim.xuatTL();
    }
  } while (chon > -1 && chon < 5);
}

void menu() {
  print("______________MENU_______________");
  print("1. Thêm mới tài liệu.");
  print("2. Xóa tài liệu theo mã.");
  print("3. Hiển thị thông tin tài liệu.");
  print("4. Tìm tài liệu theo loại.");
  print("0. Thoát chương trình.");
}
