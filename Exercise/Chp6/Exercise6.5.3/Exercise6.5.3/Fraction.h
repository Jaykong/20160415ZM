//
//  Fraction.h
//  Exercise6.5.3
//
//  Created by 张苗 on 4/23/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int num, deno;

-(void)print;
-(double)convertToNum;
@end
