//
//  main.m
//  Exercise5.7.4
//
//  Created by 张苗 on 4/22/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        
        int n, triangularNumber;
        
        NSLog(@"Table of triangularNumber");
        NSLog(@"n Sum from 1 to n");
        NSLog(@"--  -----------");
        
        triangularNumber = 0;
        
        for (n = 1; n <= 10; ++n){
            triangularNumber += n;
            
            NSLog(@" %-2i          %i", n, triangularNumber);
        }
        
    }
    return 0;
}
