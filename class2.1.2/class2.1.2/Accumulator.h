//
//  Accumulator.h
//  class2.1.2
//
//  Created by 张苗 on 4/20/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Accumulator : NSObject

-(void)setAccumulator:(double)a;
-(void)clear;
-(double)accumulator;

-(void)accmulatorAdd:(double)a ;
-(void)accmulatorSubtract:(double)a ;
-(void)accmulatorMutiply:(double)a ;
-(void)accmulatorDivide:(double)a ;


@end
