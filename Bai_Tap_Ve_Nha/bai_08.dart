import 'dart:io';

void main() {
  print("Nhap so luong cac so nguyen: ");
  int? n = int.parse(stdin.readLineSync()!);

  List list = [];

  nhap(n, list);
  xuat(list);

  List so = dsSo(list);
  xuat(so);
}

void nhap(int n, List list) {
  print("Nhap cac so nguyen: ");
  for (int i = 0; i < n; i++) {
    int? a = int.parse(stdin.readLineSync()!);
    list.add(a);
  }
}

void xuat(List list) {
  print("Danh sach cac so nguyen: ");
  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }
}

int soLanXuatHienMax(List list) {
  int max = 0;

  for (int i = 0; i < list.length; i++) {
    int dem = 0;
    for (int j = 0; j < list.length; j++) {
      if (list[i] == list[j]) {
        dem++;
        if (dem > max) {
          max = dem;
        }
      }
    }
  }

  return max;
}

List dsSo(List list) {
  int max = soLanXuatHienMax(list);

  List so = [];

  for (int i = 0; i < list.length; i++) {
    int dem = 0;
    for (int j = 0; j < list.length; j++) {
      if (list[i] == list[j]) {
        dem++;
      }
    }
    if (dem == max && so.indexOf(list[i]) < 0) {
      so.add(list[i]);
    }
  }

  return so;
}
// THIẾU SÁNG TẠO 