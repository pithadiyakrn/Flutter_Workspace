import 'dart:io';

void main()
{
  print("Enter a number:");
  int r = int.parse(stdin.readLineSync());

  double area = 3.14 * r * r;
  print("Area of circle is:");
  print(area);
}