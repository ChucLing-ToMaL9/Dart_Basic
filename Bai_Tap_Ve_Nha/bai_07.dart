import 'dart:io';

void main() {
  print("Nhap so luong cac so nguyen: ");
  int? n = int.parse(stdin.readLineSync()!);

  List list = [];

  nhap(n, list);
  xuat(n, list);

  int min = soNhoNhat(n, list);
  print('So nho nhat co trong danh sach la $min');
}

void nhap(int n, List list) {
  print("Nhap cac so nguyen: ");
  for (int i = 0; i < n; i++) {
    int? a = int.parse(stdin.readLineSync()!);
    list.add(a);
  }
}

void xuat(int n, List list) {
  print("Danh sach cac so nguyen: ");
  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }
}

int soNhoNhat(int n, List list) {
  int min = list[0];
  for (int i = 1; i < list.length; i++) if (min > list[i]) min = list[i];
  return min;
}
