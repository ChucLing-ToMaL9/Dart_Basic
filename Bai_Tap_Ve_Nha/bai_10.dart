import 'dart:io';

void main() {
  print('Nhap n: ');
  int? n = int.parse(stdin.readLineSync()!);

  print('Danh sach cac so nguyen to la: ');
  for (int i = 1; i <= n; i++) if (ktSNT(i)) print('$i, ');
}

bool ktSNT(int x) {
  int dem = 0;
  for (int i = 1; i <= x; i++) if (x % i == 0) dem++;
  if (dem == 2) return true;
  return false;
}
