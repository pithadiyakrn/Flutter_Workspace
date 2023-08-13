//9.Write a Program to check the given year is leap year or not.
void main()
{
  int year = 2004;
  if(year%4==0 && year%100!=0 || year%400 == 0)
      {
        print("this is a leap year");
      }
  else
      {
      print("this is not a leap year");
      }
  }