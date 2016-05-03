//
//  Rectangle.h
//  Exercise8.5
//
//  Created by 张苗 on 4/30/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "GraphicObject.h"

@interface Rectangle : GraphicObject
// set width and height
@property float width, length;
// set method
-(void)setWidth:(float)w andLength: (float)l;
// get area
-(float)area;
// get perimeter
-(float)perimeter;
@end
