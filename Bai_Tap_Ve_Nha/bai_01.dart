// tìm tổng các số từ 1 đến n
import 'dart:io';

void main() {
  print("Nhap n: ");
  int? n = int.parse(stdin.readLineSync()!);

  print("Tổng các số từ 1 đến $n la ${n * (n + 1) / 2}");
}
