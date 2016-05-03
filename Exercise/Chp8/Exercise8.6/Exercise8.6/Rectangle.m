//
//  Rectangle.m
//  Exercise8.6
//
//  Created by 张苗 on 5/1/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
{
    XYPoint *origin;
}

@synthesize width, height;

-(void) setWidth: (int) w andHeight: (int) h
{
    width = w;
    height = h;
}

-(void) setOrigin: (XYPoint *) pt
{
    origin = pt;
}

-(int) area
{
    return width * height;
}

-(int) perimeter
{
    return 2 * width + 2 * height;
}

-(XYPoint *) origin
{
    return origin;
}

-(BOOL) containsPoint: (XYPoint *) aPoint
{
    if (aPoint.x >= origin.x && aPoint.x <= origin.x + width &&
        aPoint.y >= origin.y && aPoint.y <= origin.y + height)
        return YES;
    else
        return NO;
}

@end