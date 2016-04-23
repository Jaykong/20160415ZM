//
//  main.m
//  Exercise6.5.1
//
//  Created by 张苗 on 4/23/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a, b;
        printf("Please type in two integer value: ");
        scanf(" %i  %i", &a, &b);
        
        if (b != 0){
            
            if(a % b == 0)
            printf("a可以被b整除\n");
            else
            printf("a不能被b整除\n");
        }
        else
            printf("NAN\n");
    }
    return 0;
}
