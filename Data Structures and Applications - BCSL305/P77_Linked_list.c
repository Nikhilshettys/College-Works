/*7. Develop a menu driven Program in C for the following operations on Singly Linked
List (SLL) of Student Data with the fields: USN, Name, Programme, Sem, PhNo
a. Create a SLL of N Students Data by using front insertion.
b. Display the status of SLL and count the number of nodes in it
c. Perform Insertion / Deletion at End of SLL
d. Perform Insertion / Deletion at Front of SLL(Demonstration of stack)
e. Exit */

#include <stdio.h>
#include <stdlib.h>

struct node
{
    char usn[25], name[25], branch[25];
    int sem;
    long int phone;
    struct node *link;
};
typedef struct node *NODE;
NODE start = NULL;
int count = 0;

NODE create()
{
    NODE snode;
    snode = (NODE)malloc(sizeof(struct node));
    if (snode == NULL)
    {
        printf("\nMemory is not available");
        exit(1);
    }
    printf("\nEnter the USN, Name, Branch, Semester, and Phone Number of the student:\n");
    scanf("%s %s %s %d %ld", snode->usn, snode->name, snode->branch, &snode->sem, &snode->phone);
    snode->link = NULL;
    count++;
    return snode;
}

NODE insertfront()
{
    NODE temp = create();
    temp->link = start;
    start = temp;
    return start;
}

NODE deletefront()
{
    NODE temp;
    if (start == NULL)
    {
        printf("\nLinked list is empty");
        return NULL;
    }
    temp = start;
    start = start->link;
    printf("\nThe Student node with USN: %s is deleted", temp->usn);
    free(temp);
    count--;
    return start;
}

NODE insertend()
{
    NODE temp = create();
    if (start == NULL)
    {
        start = temp;
        return start;
    }
    NODE cur = start;
    while (cur->link != NULL)
    {
        cur = cur->link;
    }
    cur->link = temp;
    return start;
}

NODE deleteend()
{
    if (start == NULL)
    {
        printf("\nLinked List is empty");
        return NULL;
    }
    if (start->link == NULL)
    {
        printf("\nThe Student node with USN: %s is deleted", start->usn);
        free(start);
        start = NULL;
        count--;
        return start;
    }
    NODE cur = start, prev = NULL;
    while (cur->link != NULL)
    {
        prev = cur;
        cur = cur->link;
    }
    printf("\nThe Student node with USN: %s is deleted", cur->usn);
    free(cur);
    prev->link = NULL;
    count--;
    return start;
}

void display()
{
    NODE cur = start;
    int num = 1;
    if (start == NULL)
    {
        printf("\nNo contents to display in SLL.\n");
        return;
    }
    printf("\nThe contents of SLL:\n");
    while (cur != NULL)
    {
        printf("\n||%d|| USN: %s | Name: %s | Branch: %s | Sem: %d | Phone: %ld", num, cur->usn, cur->name, cur->branch, cur->sem, cur->phone);
        cur = cur->link;
        num++;
    }
    printf("\nNumber of student nodes is: %d\n", count);
}

void stackdemo()
{
    int ch;
    while (1)
    {
        printf("\n~~~Stack Demo using SLL~~~\n");
        printf("1: Push operation\n2: Pop operation\n3: Display\n4: Exit\n");
        printf("Enter your choice for stack demo: ");
        scanf("%d", &ch);
        switch (ch)
        {
        case 1:
            start = insertfront();
            break;
        case 2:
            start = deletefront();
            break;
        case 3:
            display();
            break;
        case 4:
            return;
        default:
            printf("\nPlease enter a valid choice");
        }
    }
}

int main()
{
    int ch, n, i;
    while (1)
    {
        printf("\n~~~Menu~~~");
        printf("\n1: Create SLL of Student Nodes");
        printf("\n2: Display Status");
        printf("\n3: Insert at End");
        printf("\n4: Delete at End");
        printf("\n5: Stack Demo using SLL (Insertion and Deletion at Front)");
        printf("\n6: Exit\n");
        printf("Enter your choice: ");
        scanf("%d", &ch);
        switch (ch)
        {
        case 1:
            printf("\nEnter the number of students: ");
            scanf("%d", &n);
            for (i = 0; i < n; i++)
            {
                start = insertfront();
            }
            break;
        case 2:
            display();
            break;
        case 3:
            start = insertend();
            break;
        case 4:
            start = deleteend();
            break;
        case 5:
            stackdemo();
            break;
        case 6:
            exit(0);
        default:
            printf("\nPlease enter a valid choice");
        }
    }
}
