//
//  Rectangle.m
//  Exercise8.2
//
//  Created by 张苗 on 4/30/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
{
    XYPoint *origin;
}
@synthesize width, height;

-(double) area{
    return width * height;
}
-(double) perimeter{
    return (width + height) * 2;
}
-(void) setWidth:(double)w andHeight:(double) h{
    width = w;
    height = h;
}
-(void)setOrigin:(XYPoint *)pt{
    if(! origin)
        origin = [[XYPoint alloc] init];
    
    origin.x = pt.x;
    origin.y = pt.y;
}
-(XYPoint *) origin
{
    return origin;
}
@end
