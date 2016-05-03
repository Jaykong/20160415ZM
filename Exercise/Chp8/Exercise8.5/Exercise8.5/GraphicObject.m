//
//  GraphicObject.m
//  Exercise8.5
//
//  Created by 张苗 on 4/30/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "GraphicObject.h"

@implementation GraphicObject

@synthesize fillColor;
@synthesize lineColor;
@synthesize filled;
@synthesize side1, side2, side3;

- (void) setFillColor:(NSString *) f
{
    fillColor = f;
}

- (void) setLineColor:(NSString *) l
{
    lineColor = l;
}

- (BOOL) filled
{
    if (fillColor&&lineColor)
    {
        return YES;
    }
    else
    {
        return NO;
    }
    
}
@end
