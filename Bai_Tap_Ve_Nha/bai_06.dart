import 'dart:io';

void main() {
  print("Nhap so luong cac so nguyen: ");
  int? n = int.parse(stdin.readLineSync()!);

  List list = [];

  nhap(n, list);
  xuat(n, list);

  int max = soLonNhat(n, list);
  print('So lon nhat co trong danh sach la $max');
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

int soLonNhat(int n, List list) {
  int max = list[0];
  for (int i = 1; i < list.length; i++) if (max < list[i]) max = list[i];
  return max;
}
