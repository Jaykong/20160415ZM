//
//  Circle.m
//  Exercise8.5
//
//  Created by 张苗 on 4/30/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "Circle.h"

@implementation Circle
// set ridus
@synthesize radius;

- (void) setRadius:(float) _radius
{
    radius = _radius;
}

- (float) radius
{
    return self.side1;
}
// get area
-(float)area
{
    return 3.14 * (radius * radius);
}
// get perimeter
-(float)circumference
{
    return 3.14 * 2 * radius;
}
@end
