import 'dart:io';

import 'Bao.dart';
import 'Sach.dart';
import 'TapChi.dart';
import 'TaiLieu.dart';

class Dstailieu {
  int? _soLuongTL;
  int? _loaiTL;

  List<Tailieu> _dsTaiLieu = [];
  Dstailieu(this._dsTaiLieu);

  void nhapTL() {
    print("Số lượng tài liệu: ");
    this._soLuongTL = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < this._soLuongTL!; i++) {
      print("Loại tài liệu\n\t1. Sách\t\t2. Tạp chí\t3. Báo");
      this._loaiTL = int.parse(stdin.readLineSync()!);

      Tailieu? tl;

      if (_loaiTL == 1) {
        tl = Sach();
      } else if (_loaiTL == 2) {
        tl = TapChi();
      } else if (_loaiTL == 3) {
        tl = Bao();
      } else {
        print("Dữ liệu nhập không hợp lệ.");
      }

      tl!.nhap();
      _dsTaiLieu.add(tl);
    }
  }

  void xuatTL() {
    for (int i = 0; i < _dsTaiLieu.length; i++) {
      _dsTaiLieu[i].xuat();
    }
  }

  void themTaiLieu(int soLuong) {
    for (int i = 0; i < soLuong; i++) {
      print("Loại tài liệu\n\t1. Sách\t\t2. Tạp chí\t3. Báo");
      int loai = int.parse(stdin.readLineSync()!);

      Tailieu? tl;

      if (loai == 1) {
        tl = Sach();
      } else if (loai == 2) {
        tl = TapChi();
      } else if (loai == 3) {
        tl = Bao();
      } else {
        print("Dữ liệu nhập không hợp lệ.");
      }

      tl!.nhap();
      _dsTaiLieu.add(tl);
      print("Thêm dữ liệu thành công.");
    }
  }

  void xoaTaiLieu(int ma) {
    for (int i = 0; i < _dsTaiLieu.length; i++) {
      if (_dsTaiLieu[i].getMaTL() == ma) {
        _dsTaiLieu.remove(_dsTaiLieu[i]);
        print("Xóa dữ liệu thành công.");
      }
    }
  }

  List<Tailieu> timTaiLieu(int loai) {
    List<Tailieu> dsTLCanTim = []; // widget

    for (int i = 0; i < _dsTaiLieu.length; i++) {
      if (_dsTaiLieu[i].getLoai() == loai) {
        dsTLCanTim.add(_dsTaiLieu[i]);
      }
    }

    return dsTLCanTim;
  }
}
