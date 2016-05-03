//
//  Triangle.m
//  Exercise8.5
//
//  Created by 张苗 on 4/30/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle
@synthesize base, height ;
-(void)setBase:(float)a andHeight: (float)h
{
    base = a;
    height = h;
}
-(float)area
{
    return (base * height) / 2;
}
-(float)perimeter
{
    return base * 3;
}
@end
