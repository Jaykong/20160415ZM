//
//  main.m
//  Work3.9.7
//
//  Created by 张苗 on 4/17/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYpoint : NSObject

- (void) print;
- (void) setXpoint:(int)x;
- (void) setYpoint:(int)y;
- (int) Xpoint;
- (int) Ypoint;

@end

@implementation XYpoint
{
    int Xpoint;
    int Ypoint;
}

-(void)print
{
    NSLog(@"(%i,%i)",Xpoint,Ypoint);
}
-(void)setXpoint:(int)x
{
    Xpoint=x;
}
-(void)setYpoint:(int)y
{
    Ypoint=y;
}
-(int) Xpoint
{
    return Xpoint;
}
-(int) Ypoint
{
    return Ypoint;
}

@end

int main ( int argc, char *argv[]){
    @autoreleasepool {
        XYpoint *myXYpoint=[[XYpoint alloc] init];
        
        [myXYpoint setXpoint:20];
        [myXYpoint setYpoint:50];
        
        NSLog(@"笛卡儿坐标:(%i,%i)",[myXYpoint Xpoint],[myXYpoint Ypoint]);
    }
    
    return 0;
}
