//
//  Triangle.h
//  Exercise8.5
//
//  Created by 张苗 on 4/30/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "GraphicObject.h"

@interface Triangle : GraphicObject
@property float base, height;
-(void)setBase:(float)a andHeight: (float)h;
- (float) area;
- (float) perimeter;
@end
