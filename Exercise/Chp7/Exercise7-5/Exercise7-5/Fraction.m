//
//  Fraction.m
//  Exercise7-5
//
//  Created by 张苗 on 4/23/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize num, deno;

-(void) print{
    NSLog(@"%i/%i", num, deno);
}

-(void) setTo:(int)n over:(int)d{
    num = n;
    deno = d;
}
-(double) convertToNum{
    if (deno != 0)
        return (double) num/deno;
    else
        return NAN;
}

//添加Fraction到消息接收者

-(void) add: (Fraction *)f{
    num = num * f.deno + deno * f.num;
    deno = deno * f.deno;
}
-(void) reduce{
    int u = num;
    int v= deno;
    int temp;
    
    while(v != 0){
        temp = u % v;
        u = v;
        v = temp;
    }
    
    num /= u;
    deno /= u;
}

@end
