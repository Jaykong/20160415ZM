//
//  Complex.m
//  Exercise7.8.7
//
//  Created by 张苗 on 4/30/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "Complex.h"

@implementation Complex
@synthesize a, b;
-(void)print{
    
    NSLog(@"%i + %ii", a, b);
}
-(Complex *)add: (Complex *)complexNum{
    
    Complex * resultC = [[Complex alloc] init];
    
    resultC.a = a + complexNum.a;
    resultC.b = b + complexNum.b;
    
    return resultC;
}
@end
