#include <stdio.h>
#include <stdlib.h>
void main()
{
File *ptr1,*ptr2;
char ch input[20].target[20];
printf("Enter the input file name");
scanf("%s",input);
ptr1=f open(input,"r");
if(ptr1==NULL)
{
printf("File not found \n");
exit(0);
}
printf("Enter the target File name");
scanf("%s",target);
ptr2=f open (target,"w");
if(ptr2==NULL)
{
printf("File not found \n");
exit(0);
}
while(1)
{
ch=f get c(ptr1);
if(ch==f DF)
{
break;
}
else
{
f put c(ch,ptr2);
}
}
printf("The file copied Successfully \n");
f close (ptr1);
f close (ptr2);
}
