//
//  Calculator.h
//  Exercise6.5.2
//
//  Created by 张苗 on 4/23/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject
@property double accumulator;

-(void) clear;
-(void) add:(double) value;
-(void) subtract:(double) value;
-(void) multiply: (double) value;
-(void) divide:(double) vallue;

@end
