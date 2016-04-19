//
//  Calculator.h
//  Exercise4.5.8
//
//  Created by 张苗 on 4/19/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

// 累加方法
-(void) setAccumulator:(double) value;
-(void) clear;
-(double) accumulator;

// 算术方法
-(int) add:(double) value;
-(int) subtract:(double) value;
-(int) multiply:(double) value;
-(int) divide:(double) value;

// 练习题9

-(double) changeSign;
-(double) reciprocal;
-(double) xSquared;

@end
