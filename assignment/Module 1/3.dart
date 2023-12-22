import 'dart:io';

void main()
{
  print("Enter a number");
  int num = int.parse(stdin.readLineSync());

  int square = num*num;
  print("square of number is:");
  print(square);
  int cube = num*num*num;
  print("cube of number is:");
  print(cube);
}