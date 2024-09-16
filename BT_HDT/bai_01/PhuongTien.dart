import 'dart:io';

class PhuongTien {
  int? _id;
  String? _hangSX;
  int? _namSX;
  double? _giaBan;
  String? _mauXe;

  int getID() => this._id!;
  String getHangXe() => this._hangSX!;
  String getMau() => this._mauXe!;

  void nhap() {
    print("ID xe: ");
    this._id = int.parse(stdin.readLineSync()!);
    print("Hãng xe: ");
    this._hangSX = stdin.readLineSync()!;
    print("Năm sản xuất xe: ");
    this._namSX = int.parse(stdin.readLineSync()!);
    print("Giá bán xe: ");
    this._giaBan = double.parse(stdin.readLineSync()!);
    print("Màu xe: ");
    this._mauXe = stdin.readLineSync()!;
  }

  void xuat() {
    print("-------------THÔNG TIN XE------------");
    print("- ID xe: $_id");
    print("- Hãng sản xuất xe: $_hangSX");
    print("- Năm sản xuất xe: $_namSX");
    print("- Giá bán xe: $_giaBan");
    print("- Màu xe: $_mauXe");
  }
}
