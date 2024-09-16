import 'dart:io';

class Tailieu {
  int? _ma;
  String? _tenNXB;
  int? _soBPH;

  int getMaTL() => this._ma!;
  int getLoai() => 0;

  void nhap() {
    print("Mã tài liệu: ");
    this._ma = int.parse(stdin.readLineSync()!);
    print("Tên nhà xuất bản: ");
    this._tenNXB = stdin.readLineSync()!;
    print("Số bản phát hành: ");
    this._soBPH = int.parse(stdin.readLineSync()!);
  }

  void xuat() {
    print("------------THÔNG TIN TÀI LIỆU------------");
    print("- Mã tài liệu: $_ma");
    print("- Nhà xuất bản: $_tenNXB");
    print("- Số bản phát hành: $_soBPH");
  }
}
