//3. Write a program to make a square and cube of number.
import 'dart:io';

void main()
{
  print("Enter Your Value");
  int a = int.parse(stdin.readLineSync());
  int square = a * a;
  int cube = a * a * a;
  print("Square of the number is $square");
  print("Cube of the number is $cube");
}