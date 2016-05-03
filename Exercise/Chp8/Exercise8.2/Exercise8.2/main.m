//
//  main.m
//  Exercise8.2
//
//  Created by 张苗 on 4/30/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRec = [[Rectangle alloc] init];
        [myRec setWidth:7.8 andHeight:6.9];
        
        XYPoint *myPoint = [[XYPoint alloc] init];
        [myPoint setX:19.5 andY:28.6];
        
        myRec.origin = myPoint;
        
        NSLog(@"width = %.2f, height = %.2f", myRec.width, myRec.height);
        NSLog(@"area = %.2f , perimeter = %.2f",[myRec area],[myRec perimeter]);
        NSLog(@"XYpoint pt is (%.2f, %.2f)", myRec.origin.x, myRec.origin.y);
    }
    return 0;
}
