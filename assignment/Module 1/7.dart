import 'dart:io';

void main()
{
  print("Enter a degree centigrade to convert into fahrenheit");
  double n = double.parse(stdin.readLineSync());

  double f = (n*(9/5))+32;
  print(f);
}