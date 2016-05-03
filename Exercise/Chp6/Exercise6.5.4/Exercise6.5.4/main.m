//
//  main.m
//  Exercise6.5.4
//
//  Created by 张苗 on 4/23/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculations.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        double number;
        char operator;
        
        Calculations *myCal = [[Calculations alloc]init];
        
        do
        {
            NSLog(@"Input number operator. ");
            scanf("%lf %c", &number, &operator);
            
            switch (operator)
            {
                case '+':
                {
                    [myCal add: number];
                    break;
                }
                case '-':
                {
                    [myCal subtract: number];
                    break;
                }
                case '*':
                {
                    [myCal multiply: number];
                    break;
                }
                case '/':
                {
                    [myCal divide: number];
                    break;
                }
                case 'S':
                case 's':
                {
                    [myCal setAccumulator: number];
                    break;
                }
                case 'E':
                case 'e':
                {
                    break;
                }
                default:
                {
                    NSLog(@"Unknown Operator. ");
                    break;
                }
            }
            NSLog(@"= %lf", [myCal accumulator]);
        }
    while (operator != 'e' && operator != 'E');
        NSLog(@"End of Calculations");
    }
    return 0;
}