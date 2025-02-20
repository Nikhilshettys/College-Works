#include <stdio.h>
int main(){
    int a,b,c;
    // c=a+b; --> code runs in order first will execute
    printf("Enter first value of a \n");
    scanf("%d",&a);
    printf("Enter second value of b \n");
    scanf("%d",&b);
    c=a+b;
    printf("The sum is = %d",c);
    return 0;
}