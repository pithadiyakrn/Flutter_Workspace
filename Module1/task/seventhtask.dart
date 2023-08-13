//7. Write a program to calculate sum of 5 subjects & find the percentage.Subject marks entered by user.
import 'dart:io';

void main()
{
  print("Enter 1st subject marks");
  int first = int.parse(stdin.readLineSync());
  print("Enter 2nd subject marks");
  int secand = int.parse(stdin.readLineSync());
  print("Enter 3rd subject marks");
  int thired = int.parse(stdin.readLineSync());
  print("Enter 4th subject marks");
  int forth = int.parse(stdin.readLineSync());
  print("Enter 5th subject marks");
  int fifth = int.parse(stdin.readLineSync());

  int totmarks = first+secand+thired+forth+fifth;
  double percentage = totmarks*100/500;
  print("total marks is $totmarks");
  print("percentage is $percentage");
  
}