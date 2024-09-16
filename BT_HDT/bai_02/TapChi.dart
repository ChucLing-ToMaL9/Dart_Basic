import 'dart:io';

import 'TaiLieu.dart';

class TapChi extends Tailieu {
  int? _soPH;
  int? _thangPH;

  @override
  int getLoai() => 2;

  @override
  void nhap() {
    // TODO: implement nhap
    super.nhap();
    print("Số phát hành: ");
    this._soPH = int.parse(stdin.readLineSync()!);
    print("Tháng phát hành: ");
    this._thangPH = int.parse(stdin.readLineSync()!);
  }

  @override
  void xuat() {
    print("# TẠP CHÍ");
    // TODO: implement xuat
    super.xuat();
    print("- Số phát hành: $_soPH");
    print("- Tháng phát hành: $_thangPH\n");
  }
}
