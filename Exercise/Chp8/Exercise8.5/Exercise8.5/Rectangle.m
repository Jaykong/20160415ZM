//
//  Rectangle.m
//  Exercise8.5
//
//  Created by 张苗 on 4/30/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
// set width and height
@synthesize width, length;
// set method
-(void)setWidth:(float)w andLength: (float)l
{
    width = w;
    length = l;
}
// get area
-(float)area
{
    return width * length;
}
// get perimeter
-(float)perimeter
{
    return (width + length) * 2;
}
@end
