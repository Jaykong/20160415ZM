//
//  Accumulator.m
//  class2.1.2
//
//  Created by 张苗 on 4/20/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "Accumulator.h"

@implementation Accumulator{
    double accumulator;
}

-(void)setAccumulator:(double)a{
    accumulator = a;
}
-(void)clear{
    accumulator =0;
}
-(double)accumulator{
    return accumulator;
}

-(void)accmulatorAdd:(double)a {
    accumulator+= a;
}
-(void)accmulatorSubtract:(double)a {
    accumulator -= a;
}
-(void)accmulatorMutiply:(double)a {
    accumulator *= a;
}
-(void)accmulatorDivide:(double)a {
    accumulator /= a;
}


@end
