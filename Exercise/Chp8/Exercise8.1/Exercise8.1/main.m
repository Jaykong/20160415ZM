//
//  main.m
//  Exercise8.1
//
//  Created by 张苗 on 4/30/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Square.h"
#import "XYPoint.h"
#import "ClassA.h"
#import "ClassB.h"
#import "ClassC.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ClassA * aClass = [[ClassA alloc] init];
        
        [aClass initVar];
        [aClass printVar];
        
        ClassB * bClass = [[ClassB alloc] init];
        
        [bClass initVar];
        [bClass printVar];

        ClassC * cClass = [[ClassC alloc] init];
        
        [cClass initVar];
        [cClass printVar];
        
//        Rectangle *myRect = [[Rectangle alloc] init];
//        
//        [myRect setWidth: 5 andHeight: 8];
//
//        NSLog(@"Rectangle: w = %i, h = %i", myRect.width, myRect.height);
//        NSLog(@"Area = %i, Perimeter = %i", [myRect area], [myRect perimeter]);
//        
//        Square *mySquare = [[Square alloc] init];
//        
//        [mySquare setSide:5];
//        
//        NSLog(@"Square s = %i", [mySquare side]);
//        NSLog(@"Area = %i, Perimeter = %i", [mySquare area], [mySquare perimeter]);
//        
//        // XYpoint
//        XYPoint * myPoint =[[XYPoint alloc] init];
//        
//        [myPoint setX:100 andY:200];
//        
//        //[myRect setWidth:5 andHeight:8];
//        
//        myRect.origin = myPoint;
//        NSLog(@"Origin pt (%i, %i)", myRect.origin.x, myRect.origin.y);
//        
//        [myPoint setX:50 andY:50];
//        NSLog(@"Origin pt (%i, %i)", myRect.origin.x, myRect.origin.y);
//
//        XYPoint * theOrigin =[[XYPoint alloc] init];
//        
//        myRect.origin = theOrigin;
//        
//        theOrigin.x = 200;
//        theOrigin.y = 300;
//        
//        NSLog(@"Origin pt (%i, %i)", theOrigin.x, theOrigin.y);
//        
//        theOrigin.x = 100;
//        theOrigin.y = 100;
//        
//        NSLog(@"Origin pt (%i, %i)", theOrigin.x, theOrigin.y);


    }
    return 0;
}
