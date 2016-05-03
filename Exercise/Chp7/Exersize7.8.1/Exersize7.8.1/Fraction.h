//
//  Fraction.h
//  Exersize7.8.1
//
//  Created by 张苗 on 4/25/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int num, deno;
-(void) print;
-(void) setTo:(int) n Over: (int) d;
-(double)convertToNum;
-(void)reduce;
-(Fraction *) add: (Fraction *)f;
-(Fraction *) sub: (Fraction *)f;
-(Fraction *) mul: (Fraction *)f;
-(Fraction *) div: (Fraction *)f;
@end
