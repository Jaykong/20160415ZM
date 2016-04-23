//
//  main.m
//  Exercise6.5.5
//
//  Created by 张苗 on 4/23/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc,char * atgv[]){
    @autoreleasepool {
        
        int number, right_digit;
        BOOL isNegative = NO;

        NSLog(@"Input your number : ");
        scanf("%i", &number);

        if (number < 0) {
            isNegative = YES;
            number *= -1;
        }

        while (number != 0) {
            right_digit = number % 10;
            printf("%i", right_digit);
            number /= 10;
        }

        if (isNegative == YES) {
            printf("-\n");
        }

    }
    return 0;
}