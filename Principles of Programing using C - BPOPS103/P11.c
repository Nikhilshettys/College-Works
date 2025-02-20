#include <stdio.h>
#include <math.h>
void main()
{
int i,n;
float a[10],*ptr,mean,stddev,variance=0,sum=0;
printf("Enter the size of array\n");
scanf("%d",&n);
printf("Enter the array elements \n");
for(i=0;i<n;i++)
{
scanf("%f",&a[i]);
}
ptr=a;
for(i=0;i<n;i++)
{
sum=sum+*ptr;
ptr++;
}
mean=sum/n;
ptr=a;
for(i=0;i<n;i++)
{
variance=variance+pow((*ptr-mean),2);
ptr++;
}
stddev=sqrt((variance));
printf("sum=%f\n",sum);
printf("mean=%f\n",mean);
printf("std deviate on=%f \n",stddev);
}
