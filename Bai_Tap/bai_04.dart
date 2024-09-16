import 'dart:math';

void main() {
  HinhHoc hh = HinhChuNhat(3, 4);
  hh.xuat();

  hh = HinhTron(3);
  hh.xuat();

  hh = HinhTamGiac(3, 4, 5);
  hh.xuat();
}

// lop Hinh Hoc

abstract class HinhHoc {
  double tinhDienTich();
  double tinhChuVi();

  void xuat();
}

// lop Hinh Tron ke thua lop Hinh Hoc

const double PI = 3.14;

class HinhTron extends HinhHoc {
  double _banKinh;

  HinhTron(this._banKinh);

  @override
  double tinhDienTich() => PI * pow(this._banKinh, 2);

  @override
  double tinhChuVi() => 2 * PI * this._banKinh;

  @override
  void xuat() {
    print('Chu vi: ' +
        tinhChuVi().toString() +
        '\tDienTich: ' +
        tinhDienTich().toString());
  }
}

// lop Hinh Chu Nhat ke thua lop Hinh Hoc

class HinhChuNhat extends HinhHoc {
  double _chieuDai;
  double _chieuRong;

  HinhChuNhat(this._chieuDai, this._chieuRong);

  @override
  double tinhDienTich() => this._chieuDai * this._chieuRong;

  @override
  double tinhChuVi() => (this._chieuDai + this._chieuRong) * 2;

  @override
  void xuat() {
    print('Chu vi: ' +
        tinhChuVi().toString() +
        '\tDienTich: ' +
        tinhDienTich().toString());
  }
}

// lop Hinh Tam Giac ke thua lop Hinh Hoc

class HinhTamGiac extends HinhHoc {
  double _a, _b, _c;

  HinhTamGiac(this._a, this._b, this._c);

  @override
  double tinhDienTich() {
    double p = (this._a + this._b + this._c) / 2;
    return sqrt(p * (p - this._a) * (p - this._b) * (p - this._c));
  }

  @override
  double tinhChuVi() => this._a + this._b + this._c;

  @override
  void xuat() {
    print('Chu vi: ' +
        tinhChuVi().toString() +
        '\tDienTich: ' +
        tinhDienTich().toString());
  }
}
