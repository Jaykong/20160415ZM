//
//  main.m
//  Exercise4.5.6
//
//  Created by 张苗 on 4/19/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Complex.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Complex *myCom = [[Complex alloc] init];
        [myCom setReal:20.0];
        [myCom setImaginary:15.0];
        [myCom print];
        
        NSLog(@"%g+%gi",[myCom real],[myCom imaginary]);
        
        
    }
    return 0;
}
