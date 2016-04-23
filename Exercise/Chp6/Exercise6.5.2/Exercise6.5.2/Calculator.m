//
//  Calculator.m
//  Exercise6.5.2
//
//  Created by 张苗 on 4/23/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator{
    double accumulator;
}

-(void) setAccumulator:(double)value{
    accumulator = value;
}
-(double) accumulator{
    return accumulator;
}
-(void) clear{
    accumulator = 0;
}


-(void) add:(double) value{
    accumulator += value;
}
-(void) subtract:(double) value{
    accumulator -= value;
}
-(void) multiply: (double) value{
    accumulator *= value;
}
-(void) divide:(double) value{
    accumulator /= value;
}


@end
