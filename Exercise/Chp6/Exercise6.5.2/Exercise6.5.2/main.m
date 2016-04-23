//
//  main.m
//  Exercise6.5.2
//
//  Created by 张苗 on 4/23/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double value1, value2;
        char operator;
        BOOL  isPrime;
        
        Calculator *deskCalc = [[Calculator alloc]init];
        
        printf("Type in your expression. \n");
        scanf(" %lf %c %lf", &value1, &operator, &value2);
        
        isPrime = YES;
        
        deskCalc.accumulator = value1;
        

            if(operator == '+')
                [deskCalc add: value2];
            
            else if (operator == '-')
                [deskCalc subtract: value2];
            
            else if (operator == '*')
                [deskCalc multiply: value2];
        
            else if (operator == '/'){
                if(value2 != 0)
                    [deskCalc divide: value2];
                else
                    printf("The division cann't zero. \n");
                    isPrime = NO;
            }
            else{
                printf("Unknown operator. \n");
                isPrime = NO;
            }
        
        if(isPrime != NO)
            
            printf("%.2f\n", deskCalc.accumulator);
      
    }
    return 0;
}
