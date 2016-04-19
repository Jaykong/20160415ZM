//
//  main.m
//  Exercise4.5.7
//
//  Created by 张苗 on 4/19/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Retangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Retangle *  myRet = [[Retangle alloc] init];
        
        [myRet setWidth:10];
        [myRet setHeight:20];
        
        NSLog(@"The value of rectangle area is %i",[myRet area]);
        NSLog(@"The value of rectangle perimeter is %i",[myRet perimeter]);
        
    }
    return 0;
}
