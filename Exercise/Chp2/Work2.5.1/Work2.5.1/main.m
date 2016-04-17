//
//  main.m
//  Work2.5.1
//
//  Created by 张苗 on 4/16/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc , const char * argv[])
{
    @autoreleasepool{
        
        // 代码清单 2-1
        NSLog(@"Progromming is fun ! ");
        
        // 代码清单 2-2
        NSLog(@"Programming in Objective-C is even more fun !");
        
        // 代码清单 2-3
        NSLog(@"Testing...\n..1\n...2\n....3");
        
        // 代码清单 2-4
        int sum;
        sum=50+25;
        NSLog(@"The sum of 50 and 25 is %i", sum );
        
        // 代码清单 2-5
        int a,b,c;
        a=50;
        b=25;
        c=a+b;
        NSLog(@"The sum of %i and %i is %i ",a,b,c );
        
        
    }
    return 0;

}
