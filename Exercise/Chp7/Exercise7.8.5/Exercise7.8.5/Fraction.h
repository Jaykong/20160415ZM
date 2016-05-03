//
//  Fraction.h
//  Exercise7.8.5
//
//  Created by 张苗 on 4/30/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int num, deno;
-(void)print;

-(double)convertToNum;

@end
