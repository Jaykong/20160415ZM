//
//  Calculations.h
//  Exercise6.5.4
//
//  Created by 张苗 on 4/23/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculations : NSObject

// 累加方法
-(void)setAccumulator: (double)value;
-(double)accumulator;
-(void)clear;

// 算术方法
-(void)add: (double)value;
-(void)subtract: (double)value;
-(void)multiply: (double)value;
-(void)divide: (double)value;
-(double)S;
-(double)E;

@end
