//
//  Rectangle.h
//  Exercise8.7
//
//  Created by 张苗 on 5/2/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"

@interface Rectangle : NSObject

@property CGFloat width, height;
@property XYPoint *origin;

- (void)setWidth:(CGFloat)w height:(CGFloat)h;

- (BOOL)containsPoint:(XYPoint *)aPoint;
- (Rectangle *)intersect:(Rectangle *)rect;

@end
