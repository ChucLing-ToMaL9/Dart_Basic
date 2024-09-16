import 'dart:io';

void main() {
  print('Nhap n: ');
  int? n = int.parse(stdin.readLineSync()!);

  print('Danh sach cac so hoan thien la: ');
  for (int i = 1; i <= n; i++) if (ktSoHoanThien(i)) print('$i, ');
}

bool ktSoHoanThien(int x) {
  int tong = 0;
  for (int i = 1; i < x; i++) if (x % i == 0) tong += i;
  if (x == tong) return true;
  return false;
}
