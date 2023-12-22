import 'dart:io';

void main()
{
  print("Enter a number:");
  double num = double.parse(stdin.readLineSync());

  if(num > 0)
  {
    print("Number is positive");
  }
  else if(num < 0)
  {
    print("Number is negativie");
  }
  else
  {
    print("Number is Zero");
  }
}