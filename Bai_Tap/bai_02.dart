import 'dart:io';

void main() {
  print("- Nhap Thang: ");
  int? month = int.parse(stdin.readLineSync()!);

  while (month! < 1 || month > 12) month = int.parse(stdin.readLineSync()!);

  print("- Nhap Nam: ");
  int? year = int.parse(stdin.readLineSync()!);

  while (year! < 1) year = int.parse(stdin.readLineSync()!);

  List dayOfMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

  int day = dayOfMonth[month - 1];

  if (month == 2 && leapYear(year)) day++;

  print('Thang $month/ $year co $day ngay.');
}

bool leapYear(int year) =>
    (year % 4 == 0 && year % 100 != 0 || year % 400 == 0);
