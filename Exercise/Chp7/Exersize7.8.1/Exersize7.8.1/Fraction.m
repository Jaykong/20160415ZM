//
//  Fraction.m
//  Exersize7.8.1
//
//  Created by 张苗 on 4/25/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
@synthesize  num, deno;
-(void) print{
    printf("%i / %i \n", num, deno);
}
-(void) setTo:(int) n Over: (int) d{
    num = n;
    deno = d;
}
-(double)convertToNum{
    if (deno != 0)
        return (double) num / deno;
    else
        return  NAN;
}
-(void)reduce{
    int u = num;
    int v = deno;
    int temp;
    
    while (v != 0){
        temp = u % v;
        u = v;
        v = temp;
    }
    num /= u;
    deno /= u;
}
-(Fraction *) add: (Fraction *)f{
    Fraction *result = [[Fraction alloc] init];
    result.num = num * f.deno + deno * f.num;
    result.deno = deno * f.deno;
    [result reduce];
    return result;
}
-(Fraction *) sub: (Fraction *)f{
    Fraction *result = [[Fraction alloc] init];
    result.num = num * f.deno - deno * f.num;
    result.deno = deno * f.deno;
    [result reduce];
    return result;
}
-(Fraction *) mul: (Fraction *)f{
    Fraction *result = [[Fraction alloc] init];
    result.num = num * f.num;
    result.deno = deno * f.deno;
    [result reduce];
    return result;
}
-(Fraction *) div: (Fraction *)f{
    Fraction *result = [[Fraction alloc] init];
    result.num = num * f.deno;
    result.deno = deno * f.num;
    [result reduce];
    return result;
}
@end
