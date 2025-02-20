#include<stdio.h>
void main()
{
int a,b,sum,diff,pro,quo,rem;
char operator;
printf("enter the arithematic progression \n");
scanf("%d%c%d",&a,&operator,&b);
switch(operator)
{
case'+':sum=a+b;
        printf("sum is %d",sum);
        break;
case'-':diff=a-b;
        printf("diff is %d",diff);
        break;
case'*':pro=a*b;
        printf("pro is %d",pro);
        break;
case'/':if(b!=0)
        {
        quo=a/b;
        printf("quo is %d",quo);
        }
        else
        {
        printf("invalied input \n");
        }
case'%':rem=a%b;
        printf("rem is %d",rem);
        break;
default:printf("invalied expression");
}
}
        
