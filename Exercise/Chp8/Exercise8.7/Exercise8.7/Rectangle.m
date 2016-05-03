//
//  Rectangle.m
//  Exercise8.7
//
//  Created by 张苗 on 5/2/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

@synthesize width, height, origin;

- (void)setWidth:(CGFloat)w height:(CGFloat)h
{
    width = w;
    height = h;
}

- (BOOL)containsPoint:(XYPoint *)aPoint
{
    if ( (aPoint.x >= origin.x && aPoint.x <= origin.x + width) &&
        (aPoint.y >= origin.y && aPoint.y <= origin.y + height) )
        return YES;
    else
        return NO;
}

- (Rectangle *)intersect:(Rectangle *)rect
{
    Rectangle *result = [[Rectangle alloc] init];
    [result setWidth:0.0 height:0.0];
    XYPoint *pt = [[XYPoint alloc] init];
    pt.x = 0.0;
    pt.y = 0.0;
    result.origin = pt;
    
    if ( (rect.origin.x + rect.width >= origin.x && rect.origin.x <= origin.x + width) &&
        (rect.origin.y + rect.height >= origin.y && rect.origin.y <= origin.y + height) )
    {
        if (rect.origin.x <= origin.x)
            result.origin.x = origin.x;
        else
            result.origin.x = rect.origin.x;
        
        if (rect.origin.y <= origin.y)
            result.origin.y = origin.y;
        else
            result.origin.y = rect.origin.y;
        
        if (rect.origin.x + rect.width <= origin.x + width)
            result.width = rect.origin.x + rect.width - result.origin.x;
        else
            result.width = origin.x + width - result.origin.x;
        
        if (rect.origin.y + rect.height <= origin.y + height)
            result.height = rect.origin.y + rect.height - result.origin.y;
        else
            result.height = origin.y + height - result.origin.y;
    }
    
    return result;
}

@end