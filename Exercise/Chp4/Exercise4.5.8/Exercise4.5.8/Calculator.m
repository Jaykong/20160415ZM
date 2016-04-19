//
//  Calculator.m
//  Exercise4.5.8
//
//  Created by 张苗 on 4/19/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator{
    int accumulator;
}

-(void) setAccumulator:(double) value{
    accumulator = value;
}
-(void) clear{
    accumulator = 0;
}
-(double) accumulator{
    return accumulator;
}

-(int) add:(double) value{
    accumulator+=value;
    return  accumulator;
}
-(int) subtract:(double) value{
    accumulator-=value;
    return accumulator;
}
-(int) multiply:(double) value{
    accumulator*=value;
    return  accumulator;
}
-(int) divide:(double) value{
    accumulator/=value;
    return accumulator;
}

-(double) changeSign{
    accumulator = - accumulator;
    return accumulator;
}

-(double) xSquared{
    accumulator = accumulator * accumulator;
    return accumulator;
}



@end
