import 'dart:io';

void main() {
  print("Nhap n: ");
  int? n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i < 11; i++) {
    print('$i * $n = ${i * n}');
  }
}
