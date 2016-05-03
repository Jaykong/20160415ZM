//
//  Rectangle.h
//  Exercise8.1
//
//  Created by 张苗 on 4/30/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"

@interface Rectangle : NSObject

@property int width, height;

-(XYPoint *)origin;
-(void) setOrigin: (XYPoint *) pt;

-(int) area;
-(int) perimeter;
-(void) setWidth:(int)w andHeight:(int) h;
@end
