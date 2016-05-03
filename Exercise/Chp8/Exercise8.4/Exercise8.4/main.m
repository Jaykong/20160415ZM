//
//  main.m
//  Exercise8.4
//
//  Created by 张苗 on 4/30/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRec = [[Rectangle alloc] init];
        
        XYPoint * point1 = [[XYPoint alloc] init];
        XYPoint * point2 = [[XYPoint alloc] init];
        
        [myRec setWidth:10 andHeight:20];
        
        [point1 setX:12 andY:10];
        [point2 setX:4 andY: 13];
        
        [myRec setOrigin: point1];
        
        NSLog(@"x = %i, y = %i", myRec.origin.x,myRec.origin.y);
        NSLog(@"x = %i, y = %i", point2.x,point2.y);
        
        [myRec translate:point2];
        NSLog(@"x = %i, y = %i", myRec.origin.x, myRec.origin.y);
    }
    return 0;
}
