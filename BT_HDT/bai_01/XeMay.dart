import 'dart:io';

import 'PhuongTien.dart';

class Xemay extends PhuongTien {
  int? _congSuat;

  @override
  void nhap() {
    super.nhap();
    print("Công suất: ");
    this._congSuat = int.parse(stdin.readLineSync()!);
  }

  @override
  void xuat() {
    print("# XE MÁY");
    super.xuat();
    print("- Công suất: $_congSuat");
    print("");
  }
}
