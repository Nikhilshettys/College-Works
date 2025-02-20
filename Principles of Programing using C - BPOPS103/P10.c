#include <stdio.h>
strut student
{
int marks;
char name[20];
};
void main()
{
struct student s[10];
int i,n;
float sum,avg;
printf("Enter the numbers of students\n");
scanf("%d",&n);
printf("Enter %d student details :\n",n);
for(i=0;i<n;i++)
{
printf("Enter student name \n");
scanf("%s",s[i].name);
printf("Enter marks \n");
scanf("%d",&s[i].marks);
sum=sum+s[i].marks;
}
avg=sum/n;
printf("Average marks = %f \n",avg);
printf("All %d student details: \n",n);
for(i=0;i<n;i++)
{
printf("%s\t",s[i].name);
printf("%d\n",s[i].marks);
}
printf("students scoring above average marks: \n");
for(i=0;i<n;i++)
{
if(s[i].marks>=avg)
{
printf("%s\t",s[i].name);
printf("%d\n",s[i].marks);
}
}
printf("students scoring below average marks: \n");
for(i=0;i<n;i++)
{
if(s[i].marks>=avg)
{
printf("%s\t",s[i].name);
printf("%d\n",s[i].marks);
}
}
}
