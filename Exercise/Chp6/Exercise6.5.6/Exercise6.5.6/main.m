//
//  main.m
//  Exercise6.5.6
//
//  Created by 张苗 on 4/23/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        int number, right_digit, left_digit, count = 0, number_reversed = 0;
        
        printf("Enter a number: ");
        scanf("%d", &number);
        
        if (number < 0)
        {
            number = -number; // added this for a minus number
            printf("-\n");
        }
        // count表示循环次数.
        
        while (number != 0)
        {
            right_digit = number % 10;
            number_reversed = number_reversed * 10 + right_digit;
            ++count;
            number /= 10;
        }
        
        do
        {
            left_digit = number_reversed % 10;
            
            switch (left_digit)
            {
                case 0:
                    printf("zero\n");
                    break;
                    
                case 1:
                    printf("one\n");
                    break;
                    
                case 2:
                    printf("two\n");
                    break;
                    
                case 3:
                    printf("three\n");
                    break;
                    
                case 4:
                    printf("four\n");
                    break;
                    
                case 5:
                    printf("five\n");
                    break;
                    
                case 6:
                    printf("six\n");
                    break;
                    
                case 7:
                    printf("seven\n");
                    break;
                    
                case 8:
                    printf("eight\n");
                    break;
                    
                case 9:
                    printf("nine\n");
                    break;
                    
                default:
                    printf("Unknown input");
                    break;
            }
            number_reversed /= 10;
            --count;
        }
        while (count > 0);
        
    }
    return 0;
}