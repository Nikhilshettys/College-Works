/*6.Develop a menu driven Program in C for the following operations on Circular QUEUE of Characters
(Array Implementation of Queue with maximum size MAX).
a. Insert an Element on to Circular QUEUE
b. Delete an Element from Circular QUEUE
c. Demonstrate Overflow and Underflow situations on Circular QUEUE
d. Display the status of Circular QUEUE
e. Exit */

#include <stdio.h>
#include <stdlib.h>
#define MAX 5

char cq[MAX];
int front = -1, rear = -1;

void insert(char item);
void delete_item();
void display();

void main()
{
    int ch;
    char item;

    while (1)
    {
        printf("\n\n~~Main Menu~~");
        printf("\n==> 1. Insertion and Overflow Demo");
        printf("\n==> 2. Deletion and Underflow Demo");
        printf("\n==> 3. Display");
        printf("\n==> 4. Exit");
        printf("\nEnter Your Choice: ");
        scanf("%d", &ch);

        switch (ch)
        {
        case 1:
            printf("\nEnter the element to be inserted: ");
            scanf(" %c", &item);
            insert(item);
            break;
        case 2:
            delete_item();
            break;
        case 3:
            display();
            break;
        case 4:
            exit(0);
        default:
            printf("\n\nPlease enter a valid choice");
        }
    }
}

void insert(char item)
{
    if ((rear + 1) % MAX == front)
    {
        printf("\n\n~~Circular Queue Overflow~~");
    }
    else
    {
        if (front == -1)
            front = 0;
        rear = (rear + 1) % MAX;
        cq[rear] = item;
        printf("\nInserted element: %c", item);
    }
}

void delete_item()
{
    if (front == -1)
    {
        printf("\n\n~~Circular Queue Underflow~~");
    }
    else
    {
        char item = cq[front];
        printf("\n\nDeleted element from the queue is: %c", item);
        if (front == rear)
        {
            front = rear = -1;
        }
        else
        {
            front = (front + 1) % MAX;
        }
    }
}

void display()
{
    if (front == -1)
    {
        printf("\n\nCircular Queue Empty");
    }
    else
    {
        int i;
        printf("\nCircular Queue contents are:\n");
        printf("Front[%d]-> ", front);
        for (i = front; i != rear; i = (i + 1) % MAX)
        {
            printf(" %c", cq[i]);
        }
        printf(" %c", cq[i]);
        printf(" <-[%d]Rear", rear);
    }
}
