//
//  GraphicObject.h
//  Exercise8.5
//
//  Created by 张苗 on 4/30/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GraphicObject : NSObject

@property (nonatomic) NSString *fillColor;
@property (nonatomic) NSString *lineColor;
@property (nonatomic) BOOL filled;

@property (nonatomic) int side1, side2, side3;

- (void) setFillColor:(NSString *) f;
- (void) setLineColor:(NSString *) l;
- (BOOL) filled;

@end
