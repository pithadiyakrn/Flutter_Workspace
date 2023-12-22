import 'dart:io';

void main()
{
  print("principal(P):");
  int p = int.parse(stdin.readLineSync());

  print("rate(r):");
  int r = int.parse(stdin.readLineSync());

  print("No of years(n):");
  int n = int.parse(stdin.readLineSync());

  double i = p * r * n / 100;
  print("Simple interest is:");
  print(i);
}