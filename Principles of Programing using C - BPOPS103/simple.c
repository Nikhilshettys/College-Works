#include<stdio.h>
void main()
{
int a,b,sum,diff,pro,quo,rem;
char operator;
printf("Enter the Mathematical expression \n");
scanf("%d%c%d", &a, &operator, &b);
switch(operator)
{
case'+':sum=a+b;
printf("The sum is =%d",sum);
break;
case'-':diff=a-b;
printf("The difference is =%d",diff);
break;
case'*':pro=a*b;
printf("The product is =%d",pro);
break;
case'/':quo=a/b;
printf("The quoeint is =%d",quo);
break;
case'%':rem=a%b;
printf("The reminder is =%d",rem);
break;
default :printf("Invalid function or Expression");
}
}
