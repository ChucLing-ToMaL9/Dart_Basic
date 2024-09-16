import 'dart:io';

import 'PhuongTien.dart';

class Xetai extends PhuongTien {
  double? _trongTai;

  @override
  void nhap() {
    super.nhap();
    print("Trọng tải: ");
    this._trongTai = double.parse(stdin.readLineSync()!);
  }

  @override
  void xuat() {
    print("# XE TẢI");
    super.xuat();
    print("- Trọng tải: $_trongTai");
    print("");
  }
}
