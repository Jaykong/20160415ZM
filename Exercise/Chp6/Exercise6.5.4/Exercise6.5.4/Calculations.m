//
//  Calculations.m
//  Exercise6.5.4
//
//  Created by 张苗 on 4/23/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "Calculations.h"

@implementation Calculations{
    double accumulator;
}

// 累加方法
-(void)setAccumulator: (double)value{
    accumulator = value;
}

-(double)accumulator{
    return accumulator;
}
-(void)clear{
    accumulator = 0;
}

// 算术方法
-(void)add: (double)value{
    accumulator += value;
}
-(void)subtract: (double)value{
    accumulator -= value;
}
-(void)multiply: (double)value{
    accumulator *= value;
}
-(void)divide: (double)value{
    if (value != 0)
        accumulator /= value;
    else
        NSLog(@"Division is zero! ");
}


@end
