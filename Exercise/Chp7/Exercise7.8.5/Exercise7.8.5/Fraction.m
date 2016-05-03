//
//  Fraction.m
//  Exercise7.8.5
//
//  Created by 张苗 on 4/30/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

-(void) print{
    printf("%i / %i \n", _num, _deno);
}

-(double)convertToNum{
    if (_deno != 0)
        return (double) _num / _deno;
    else
        return  NAN;
}
@end
