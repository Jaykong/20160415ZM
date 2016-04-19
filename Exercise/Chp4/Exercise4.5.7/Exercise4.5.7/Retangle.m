//
//  Retangle.m
//  Exercise4.5.7
//
//  Created by 张苗 on 4/19/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "Retangle.h"

@implementation Retangle{
    int width;
    int height;
    int area;
    int perimeter;
}
-(void) setWidth:(int) w{
    width = w;
}
-(void) setHeight:(int) h{
    height = h;
}
-(int) width{
    return width;
}
-(int) height;{
    return height;
}
-(int) area{
    return width*height;
}
-(int) perimeter{
    return (width+height)*2;
}

@end
