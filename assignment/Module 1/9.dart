import 'dart:io';

void main()
{
  print("Enter a number");
  int a = int.parse(stdin.readLineSync());

  print("Enter a number");
  int b = int.parse(stdin.readLineSync());

  a = a+b;
  b = a-b;
  a = a-b;
  print("a=$a");
  print("b=$b");
}