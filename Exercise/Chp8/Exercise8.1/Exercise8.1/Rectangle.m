//
//  Rectangle.m
//  Exercise8.1
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

-(int) area{
    return width * height;
}
-(int) perimeter{
    return (width + height)*2;
}
-(void) setWidth:(int)w andHeight:(int) h{
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
