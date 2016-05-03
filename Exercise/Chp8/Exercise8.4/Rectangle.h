//
//  Rectangle.h
//  Exercise8.4
//
//  Created by 张苗 on 4/30/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"
@interface Rectangle : NSObject

@property int width, height;

-(void)translate: (XYPoint *)pt;

-(void)setWidth:(int) w andHeight:(int) h;
-(void)setOrigin:(XYPoint *)pt;
-(XYPoint *)origin;

@end
