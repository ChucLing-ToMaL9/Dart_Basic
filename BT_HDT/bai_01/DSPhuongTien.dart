import 'dart:io';

import 'OTo.dart';
import 'PhuongTien.dart';
import 'XeMay.dart';
import 'XeTai.dart';

class Dsphuongtien {
  int? _soLuongPT;
  int? _loaiPT;

  List<PhuongTien> _dsXe = [];
  Dsphuongtien(this._dsXe);

  void nhapDSXe() {
    print("Số lượng phương tiện: ");
    this._soLuongPT = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < this._soLuongPT!; i++) {
      print("- Loại phương tiện\n1. Xe Ô tô\t 2. Xe máy\t 3. Xe tải");
      this._loaiPT = int.parse(stdin.readLineSync()!);

      PhuongTien? xe;

      if (_loaiPT == 1) {
        xe = Oto();
      } else if (_loaiPT == 2) {
        xe = Xemay();
      } else if (_loaiPT == 3) {
        xe = Xetai();
      } else {
        print("Dữ liệu nhập không hợp lệ.");
      }

      xe!.nhap();
      _dsXe.add(xe);
    }
  }

  void xuatDSXe() {
    for (int i = 0; i < this._dsXe.length; i++) {
      this._dsXe[i].xuat();
    }
  }

  void themPhuongTien(int soLuong) {
    for (int i = 0; i < soLuong; i++) {
      print("- Loại phương tiện\n1. Xe Ô tô\t 2. Xe máy\t 3. Xe tải");
      int loai = int.parse(stdin.readLineSync()!);

      PhuongTien? xe;

      if (loai == 1) {
        xe = Oto();
        xe.nhap();
      } else if (loai == 2) {
        xe = Xemay();
        xe.nhap();
      } else if (loai == 3) {
        xe = Xetai();
        xe.nhap();
      } else {
        print("Dữ liệu nhập không hợp lệ.");
      }

      _dsXe.add(xe!);
    }
  }

  void xoaPhuongTienTheoID(int id) {
    for (int i = 0; i < _dsXe.length; i++) {
      if (_dsXe[i].getID() == id) {
        _dsXe.remove(_dsXe[i]);
      }
    }
  }

  List<PhuongTien> timPTTheoHang(String hangXe) {
    List<PhuongTien> dsXeCanTim = []; // widget

    for (int i = 0; i < _dsXe.length; i++) {
      if (_dsXe[i].getHangXe().compareTo(hangXe) == 0) {
        dsXeCanTim.add(_dsXe[i]);
      }
    }

    return dsXeCanTim;
  }

  List<PhuongTien> timPTTheoMau(String mauXe) {
    List<PhuongTien> dsXeCanTim = []; // widget

    for (int i = 0; i < _dsXe.length; i++) {
      if (_dsXe[i].getMau().compareTo(mauXe) == 0) {
        dsXeCanTim.add(_dsXe[i]);
      }
    }

    return dsXeCanTim;
  }
}
