//
//  Fraction.m
//  Exercise7-4
//
//  Created by 张苗 on 4/23/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numberator, denominator;

-(void) print{
    NSLog(@"%i / %i", numberator, denominator);
}
-(void) setTo: (int)n over: (int)d{
    numberator = n;
    denominator = d;
}
-(double)convertToNum{
    if(denominator != 0)
        return (double)numberator/denominator;
    else
        return NAN;
}

// to add two fractions

-(void)add: (Fraction *)f{
    numberator = numberator * f.denominator + denominator * f.numberator;
    denominator = denominator * f.denominator;
}

@end
