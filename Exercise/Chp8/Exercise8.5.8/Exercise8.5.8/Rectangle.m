//
//  Rectangle.m
//  Exercise8.5.8
//
//  Created by 张苗 on 4/28/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
@synthesize Width, Height;

- (void) setWidth:(double)w setHeight:(double)h {
    Width = w;
    Height = h;
}
- (void) DrawRectangle
{
    int counter;
    int space;
    for (counter = 1; counter <= Width; counter++) {
        printf("-");
    }
    for (counter = 1; counter <= Height; counter++)
    {
        printf("\n|");
        
        for (space =1; space < Width - 1; space++) {
            printf(" ");
        }
        printf("|");
    }
    printf("\n");
    for (counter = 1; counter <= Width; counter++) {
        printf("-");
    }
    printf("\n");
}

@end
