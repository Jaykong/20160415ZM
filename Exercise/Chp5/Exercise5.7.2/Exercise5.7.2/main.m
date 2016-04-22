//
//  main.m
//  Exercise5.7.2
//
//  Created by 张苗 on 4/20/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n,triangularNumber;
        
        for (n=5;n<=50;n+=5)
        {
            triangularNumber = n*(n+1)/2;
            NSLog(@"Triangular number %2i is %4i",n,triangularNumber);
        }
        
    }
    return 0;
}
