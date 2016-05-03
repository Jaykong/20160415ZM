//
//  Rectangle.h
//  Exercise8.5.8
//
//  Created by 张苗 on 4/28/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject

@property int Width, Height;

- (void) setWidth: (double) w setHeight: (double) h;
- (void) DrawRectangle;

@end

