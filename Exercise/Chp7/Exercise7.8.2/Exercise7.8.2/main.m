//
//  main.m
//  Exercise7.8.2
//
//  Created by 张苗 on 4/28/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Fraction *f1 = [[Fraction alloc] init];
        Fraction *f2 = [[Fraction alloc] init];
        
        Fraction *resultFraction;
        
        [f1 setTo: 1 Over: 3];
        [f1 print:NO];
        NSLog(@"+");
        [f2 setTo: 5 Over: 3];
        [f2 print:NO];
        NSLog(@"=");
        
        resultFraction = [f1 add:f2];
        [resultFraction print:YES];
    }
    return 0;
}