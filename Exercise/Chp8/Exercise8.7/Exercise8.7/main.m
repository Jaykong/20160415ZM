//
//  main.m
//  Exercise8.7
//
//  Created by 张苗 on 5/2/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *aRect = [[Rectangle alloc] init];
        [aRect setWidth:250 height:75];
        XYPoint *aPt = [[XYPoint alloc] init];
        aPt.x = 200.0;
        aPt.y = 420.0;
        aRect.origin = aPt;
        
        Rectangle *bRect = [[Rectangle alloc] init];
        [bRect setWidth:700.0 height:880.0];
        XYPoint *bPt = [[XYPoint alloc] init];
        bPt.x = 100.0;
        bPt.y = 200.0;
        bRect.origin = bPt;
        
        Rectangle *result = [aRect intersect:bRect];
        NSLog(@"Origin is (%g, %g), width  = %g, height = %g", result.origin.x, result.origin.y, result.width, result.height);
        
    }
    return 0;
}