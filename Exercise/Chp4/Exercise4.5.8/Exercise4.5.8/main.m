//
//  main.m
//  Exercise4.5.8
//
//  Created by 张苗 on 4/19/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Calculator *myCal=[[Calculator alloc]init];
        
        [myCal setAccumulator:100.0];
        [myCal add:200.0];
        [myCal divide:15.0];
        [myCal subtract:10.0];
        [myCal multiply:5.0];
        
        NSLog(@"The result is %g",[myCal accumulator]);
        NSLog(@"The result of changeSign is %g",[myCal changeSign]);
        
        NSLog(@"The result of xSquared is %g",[myCal xSquared]);
    }
    return 0;
}
