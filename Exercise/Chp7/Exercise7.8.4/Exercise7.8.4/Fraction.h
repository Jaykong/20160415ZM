//
//  Fraction.h
//  Exercise7.8.4
//
//  Created by 张苗 on 4/30/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int num, deno;
-(void) print;
-(void)reduce;
-(Fraction *) add: (Fraction *)f;
-(Fraction *) sub: (Fraction *)f;
-(Fraction *) mul: (Fraction *)f;
-(Fraction *) div: (Fraction *)f;
@end


