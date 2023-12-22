import 'dart:io';

void main()
{
  print("base");
  int b = int.parse(stdin.readLineSync());
  print("hight");
  int h = int.parse(stdin.readLineSync());

  double area = 0.5 * b * h;
  print("Area of Triangle is: ");
  print(area);
}