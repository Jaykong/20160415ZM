//
//  main.m
//  Exercise4.5.5
//
//  Created by 张苗 on 4/19/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        double value;
        value = (3.31e-8+2.01e-7) / (7.16e-6+2.01e-8);
        NSLog(@"表达式的值为：%e",value);
        
        
    }
    return 0;
}
