import 'dart:io';

import 'PhuongTien.dart';

class Oto extends PhuongTien {
  int? _soChoNgoi;

  @override
  void nhap() {
    super.nhap();
    print("Số chỗ ngồi: ");
    this._soChoNgoi = int.parse(stdin.readLineSync()!);
  }

  @override
  void xuat() {
    print("# Ô TÔ");
    super.xuat();
    print("- Số chỗ ngồi: $_soChoNgoi");
    print("");
  }
}
