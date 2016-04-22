//
//  main.m
//  Exercise5.7.5
//
//  Created by 张苗 on 4/22/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, number, triangularNumber, counter, times;
        
        NSLog(@"How many triangular numbers would you like to create ? ");
        scanf(" %i",  &times);
        
        for(counter = 1; counter <= times ; ++counter )
        {
            NSLog(@"What triangular number do you want ? ");
            scanf(" %i", &number);
        
            triangularNumber = 0;
        
            for(n = 1; n <= number ; ++n)
            {
                triangularNumber += n;
            }
        
            NSLog(@"Triangular number %i is %i", number, triangularNumber);
        }
    }
    return 0;
}
