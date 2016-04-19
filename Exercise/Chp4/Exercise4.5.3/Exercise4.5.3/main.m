//
//  main.m
//  Exercise4.5.3
//
//  Created by 张苗 on 4/19/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char c, d;
        
        c='d';
        d= c;
        NSLog(@"d= %c", d);
    }
    return 0;
}
