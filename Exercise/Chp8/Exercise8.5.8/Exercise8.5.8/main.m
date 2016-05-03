//
//  main.m
//  Exercise8.5.8
//
//  Created by 张苗 on 4/28/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        int draw_Width;
        int draw_Height;
        
        NSLog(@"Enter rectanle's width and heigth: ");
        scanf("%i %i", &draw_Width, &draw_Height);
        
        Rectangle *myRect = [[Rectangle alloc]init];
        
        [myRect setWidth:draw_Width setHeight:draw_Height];
        [myRect DrawRectangle];
    }
}

