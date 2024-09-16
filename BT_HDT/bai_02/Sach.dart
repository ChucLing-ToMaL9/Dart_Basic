import 'dart:io';

import 'TaiLieu.dart';

class Sach extends Tailieu {
  String? _tenTacGia;
  int? _soTrang;

  @override
  int getLoai() => 1;

  @override
  void nhap() {
    // TODO: implement nhap
    super.nhap();
    print("Tên tác giả: ");
    this._tenTacGia = stdin.readLineSync();
    print("Số trang");
    this._soTrang = int.parse(stdin.readLineSync()!);
  }

  @override
  void xuat() {
    print("# SÁCH");
    // TODO: implement xuat
    super.xuat();
    print("- Tên tác giả: $_tenTacGia");
    print("- Số trang: $_soTrang\n");
  }
}
