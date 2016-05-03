//
//  Rectangle.h
//  Exercise8.2
//
//  Created by 张苗 on 4/30/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"

@interface Rectangle : NSObject

@property double width, height;

-(XYPoint *)origin;
-(void) setOrigin: (XYPoint *) pt;

-(double) area;
-(double) perimeter;
-(void) setWidth:(double)w andHeight:(double)h;
@end