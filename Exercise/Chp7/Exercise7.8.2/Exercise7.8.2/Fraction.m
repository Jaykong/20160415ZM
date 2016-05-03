//
//  Fraction.m
//  Exercise7.8.2
//
//  Created by 张苗 on 4/28/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "Fraction.h"
@implementation Fraction

@synthesize num, deno;

-(void) print: (BOOL) isReduce
{
    if (deno == 1)
        NSLog(@"%i",num);
    else if (num == 0)
        {
            NSLog(@"Zero");
        }
    
    //这里判断的如果分母等于0则输出nan，和converToNum的return nan的区别是什么呢？
    else if(deno == 0)
    {
        NSLog(@"NAN");
    }
    
    else if(isReduce == YES)
        {
            Fraction *reduceFraction = [[Fraction alloc] init];
            [reduceFraction setTo:num Over:deno];
            [reduceFraction reduce];
            if (reduceFraction.deno == 1)
                NSLog(@"%i", reduceFraction.num);
            else
                NSLog(@"%i/%i", reduceFraction.num, reduceFraction.deno);
                NSLog(@"约简前的值为： %i/%i", num, deno);
        }
    else
        NSLog(@"%i/%i", num, deno);
}

//分数约简
-(void) reduce{
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
-(void) setTo: (int)n Over: (int) d{
    
    num = n;
    deno = d;
    
}
-(double) converToNum{
    if (deno != 0)
        return (double) num / deno;
    else
        return NAN;
}
-(Fraction *)add: (Fraction *)f{
    Fraction *result = [[Fraction alloc] init];
    
    result.num = num * f.deno + deno * f.num;
    result.deno = deno * f.deno;
    
    return result;
}



@end