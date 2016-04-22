//
//  main.m
//  Exercise5.7.8
//
//  Created by 张苗 on 4/22/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>
int main (int argc , char * argv[])
{
    @autoreleasepool {
        int sum, number, right_digit;
        
        NSLog(@"Enter your number.");
        scanf("%i", &number);
        
        do
        {
            right_digit = number % 10;
            NSLog(@"%i", right_digit);
            number /= 10;
            sum += right_digit;
            
        }
        
        while (number > 0);
        {
            NSLog(@"The sum of the numbers = %i", sum);
        }
        
    }
 
    return 0;
}
