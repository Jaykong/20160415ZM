//
//  main.m
//  Exercise8.6
//
//  Created by 张苗 on 5/1/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "XYPoint.h"

void testContainment(Rectangle *rect, XYPoint *p) {
    NSLog(@"Rectangle %s contain the point.",[rect containsPoint: p] ? "does" : "does not");
    
}

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        // Create a Rectangle and an XYPoint for its origin
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myOrigin = [[XYPoint alloc] init];
        
        [myOrigin setX: 100 andY: 100];
        
        [myRect setWidth: 50 andHeight: 100];
        myRect.origin = myOrigin;
        
        NSLog(@"Rectangle origin at (%i, %i), height: %i, width: %i",
              myRect.origin.x, myRect.origin.y, myRect.height, myRect.width);
        
        // Create a new XYPoint for testing within the rectangle
        XYPoint *myPoint = [[XYPoint alloc] init];
        myPoint.x = 125;
        myPoint.y = 150;
        NSLog(@"Point at (%i, %i)", myPoint.x, myPoint.y);
        
        testContainment(myRect, myPoint);
        
        // Move point outside of myRect
        [myPoint setX: 50 andY: 50];
        NSLog(@"Point at (%i, %i)", myPoint.x, myPoint.y);
        testContainment(myRect, myPoint);
        
        [myPoint setX:100 andY:100];
        NSLog(@"Point at (%i, %i)", myPoint.x, myPoint.y);
        testContainment(myRect, myPoint);
    }
    return 0;
}