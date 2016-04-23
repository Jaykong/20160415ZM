//
//  Fraction.h
//  Exercise7-4
//
//  Created by 张苗 on 4/23/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

// define the fraction class

@interface Fraction : NSObject

@property int numberator, denominator;

-(void) print;
-(void) setTo: (int)n over: (int)d;
-(double)convertToNum;
-(void)add: (Fraction *)f;



@end
