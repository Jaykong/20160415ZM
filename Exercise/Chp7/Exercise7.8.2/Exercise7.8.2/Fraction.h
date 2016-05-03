//
//  Fraction.h
//  Exercise7.8.2
//
//  Created by 张苗 on 4/28/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

// The Fraction Class

@interface Fraction : NSObject
@property int num, deno;

-(void) print: (BOOL) isReduce;
-(void) reduce;
-(void) setTo: (int)n Over: (int) d;
-(double) converToNum;
-(Fraction *)add: (Fraction *)f;

@end