//
//  Circle.h
//  Exercise8.5
//
//  Created by 张苗 on 4/30/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "GraphicObject.h"

@interface Circle : GraphicObject
// set ridus
@property float radius;
-(void) setRadius:(float) _radius;
-(float) radius;
-(float)area;
-(float)circumference;
@end
