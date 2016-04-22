//
//  main.m
//  Exercise5.7.7
//
//  Created by 张苗 on 4/22/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>


// 如果输出负数，则输出的每一位也是负数
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number, right_digit;
        
        NSLog(@"Enter your number: ");
        scanf(" %i", &number);
        
        while(number != 0){
            right_digit = number % 10;
            NSLog(@" %i", right_digit);
            number /= 10;
        }
    }
    return 0;
}
