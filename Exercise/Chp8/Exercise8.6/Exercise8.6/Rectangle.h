//
//  Rectangle.h
//  Exercise8.6
//
//  Created by 张苗 on 5/1/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "XYPoint.h"

@interface Rectangle : NSObject

@property int width, height;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(void) setWidth: (int) w andHeight: (int) h;
-(int) area;
-(int) perimeter;
-(BOOL) containsPoint: (XYPoint *) aPoint;

@end
