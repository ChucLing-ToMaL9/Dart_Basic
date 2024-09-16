import 'dart:io';

void main() {
  print("Nhap n: ");
  int? n = int.parse(stdin.readLineSync()!);

  int tong = 0;
  for (int i = 1; i <= n; i++) {
    if (i % 2 != 0) tong += i;
  }

  print("Tổng các số chẵn từ 1 đến $n la $tong");
}
