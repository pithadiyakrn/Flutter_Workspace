import 'dart:io';

import 'dart:typed_data';

void main()
{
  print("Enter a number:");
  int num1 = int.parse(stdin.readLineSync());
  print("Enter a number:");
  int num2 = int.parse(stdin.readLineSync());

  int add = num1 + num2;
  int sub = num1 - num2;
  int mul = num1 * num2;
  double div = num2 / num1;

  print(add);
  print(sub);
  print(mul);
  print(div);
}