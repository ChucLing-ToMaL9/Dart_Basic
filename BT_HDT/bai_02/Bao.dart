import 'dart:io';

import 'TaiLieu.dart';

class Bao extends Tailieu {
  int? _ngayPH;

  @override
  int getLoai() => 3;

  @override
  void nhap() {
    // TODO: implement nhap
    super.nhap();
    print("Ngày phát hành: ");
    this._ngayPH = int.parse(stdin.readLineSync()!);
  }

  @override
  void xuat() {
    print("# BÁO");
    // TODO: implement xuat
    super.xuat();
    print("- Ngày phát hành: $_ngayPH\n");
  }
}
