#program to perform stack and queue operations

def stack(stack):
    print()
    print("Stack")
    print("1.Push")
    print("2.Pop")
    ch1=int(input("Enter your choice: "))
    if ch1==1:
        stack_push(stack)
    elif ch1==2:
        stack_pop(stack)
    else:
        print("Wrong choice")
        

def stack_push(stack):
    print()
    print("Stack push function")
    ch='y'
    while ch=='y':
        print("Pushing numbers into stack")
        n=int(input("Enter an integer(0 to stop): "))
        if n!=0:
            stack.append(n)
        else:
            break
    print("The stack is ",stack)

def stack_pop(stack):
    print()
    print("Stack pop function")
    ch='y'
    i=1
    if stack!=None:
        while ch=='y':
            print("Popping element no ", i)
            stack.pop()
            ch=input("Pop one more element?(y/n): ")
            i+=1
        print("The final stack after popping is: ", stack)
    else:
        print("Stack is empty")

def queue(queue):
    print()
    print("Queue")
    print("1.Push")
    print("2.Pop")
    ch2=int(input("Enter your choice: "))
    if ch2==1:
        queue_push(queue)
    elif ch2==2:
        queue_pop(queue)
    else:
        print("Wrong choice")

def queue_push(queue):
    print()
    print("Queue push function")
    chh='y'
    while chh=='y':
        print("Pushing numbers into queue")
        n=int(input("Enter an integer(0 to stop): "))
        if n!=0:
            queue.append(n)
        else:
            break
    print("The queue is ",queue)

def queue_pop(queue):
    print()
    print("Queue pop function")
    chhh='y'
    i=1
    if queue!=None:
        while chhh=='y':
            print("Popping element no ", i)
            queue.pop(0)
            chhh=input("Pop one more element?(y/n): ")
            i+=1
        print("The final queue after popping is: ", queue)
    else:
        print("queue is empty")

st=[]
qu=[]
c='y'
while c=='y':
    print("---------")
    print("Menu")
    print("1.Stack")
    print("2.Queue")
    choice=int(input("Enter your choice: "))
    if choice==1:
        stack(st)
    elif choice==2:
        queue(qu)
    else:
        print("Wrong choice")
    c=input("Do you wish to run the program again?(y/n): ")
    


