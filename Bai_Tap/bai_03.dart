void main() {
  HocSinh hs =
      HocSinh("Le Thi Truc Linh", "CD TH 22 DDE", "04-03-2003", 8, 8, 8);

  hs.xuat();
}

// lop hoc sinh

class HocSinh {
  String _hoTen;
  String _lop;
  String _ngaySinh;
  double _toan, _van, _anh;

  HocSinh(
      this._hoTen, this._lop, this._ngaySinh, this._toan, this._van, this._anh);

  void xuat() {
    String dtb = tinhDiemTB().toString();
    String loai = xepLoai().toString();

    print('--------------THONG TIN HOC SINH--------------');
    print('- Ho va ten: $_hoTen\t Lop: $_lop\t Ngay sinh: $_ngaySinh');
    print('- Toan: $_toan\t Van: $_van\t Anh: $_anh');
    print('- Diem trung binh: $dtb\t Xep loai: $loai');
  }

  double tinhDiemTB() => (this._toan + this._van + this._anh) / 3;

  String xepLoai() => ((tinhDiemTB() >= 8.5)
      ? "Gioi"
      : (tinhDiemTB() >= 6.5)
          ? "Kha"
          : (tinhDiemTB() >= 5)
              ? "Trung binh"
              : "Yeu");
}
