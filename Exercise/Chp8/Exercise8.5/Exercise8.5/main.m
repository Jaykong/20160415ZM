//
//  main.m
//  Exercise8.5
//
//  Created by 张苗 on 4/30/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GraphicObject.h"
#import "Rectangle.h"
#import "Circle.h"
#import "Triangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //----- create objects
        Rectangle *myRec = [[Rectangle alloc] init];
        Circle *myCir = [[Circle alloc] init];
        Triangle *myTri = [[Triangle alloc] init];
        
        //----- set sizes
        [myRec setWidth:5 andLength:15];
        [myCir setRadius:5];
        [myTri setBase:10 andHeight:20];
 
        [myCir setFillColor:@"Blue"];
        [myCir setLineColor:@"Red"];
        
        NSLog(@"Circle fillcolor is %@ ,and setline is %@", myCir.fillColor, myCir.lineColor);
        NSLog(@"Circle area: %.2f Circumference: %.2f", myCir.area, myCir.circumference);
        if (myCir) {
            NSLog(@"Circle is filled");
        }else{
            NSLog(@"Circle isnot filled");
        }

        NSLog(@"Width = %.2f", myRec.width);
        NSLog(@"Length = %.2f", myRec.length);
        NSLog(@"Area = %.2f", [myRec area]);
        NSLog(@"Perimeter = %.2f", [myRec perimeter]);

        NSLog(@"Triangle");
        NSLog(@"Base = %.2f", myTri.base);
        NSLog(@"Height = %.2f", myTri.height);
        NSLog(@"Area = %.2f", [myTri area]);
        NSLog(@"Perimeter = %.2f", [myTri perimeter]);
        
    }
    return 0;
}
