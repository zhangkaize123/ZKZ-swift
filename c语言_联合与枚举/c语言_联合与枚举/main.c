//
//  main.c
//  c语言_联合与枚举
//
//  Created by 张凯泽 on 15/9/23.
//  Copyright © 2015年 rytong. All rights reserved.
//

#include <stdio.h>
#include <string.h>
//在结构中占用内存是24个字节:int 占用4个，char型数组占用20个
struct Student
{
    int number;
    char name[20];
};
//在联合中占用20个字节 :在联合中规定谁的内存空间的就用谁的，int占用4个字节，而char型数组占用20个字节，所以union中有20个字节， 所以在使用联合的时候同一时间只能使用它其中的一个成员
union Xinxi
{
    int number;
    char name[20];
};
int main(int argc, const char * argv[]) {
    union Xinxi xx;
    strcpy(xx.name, "dfege");
    xx.number=23;
    printf("xx.name=%s\n",xx.name);
    printf("xx.number=%d\n",xx.number);
    //通过以上的例子可以看出，在给xx.name赋值的时候，不能对xx.number赋值
    
    return 0;
}
