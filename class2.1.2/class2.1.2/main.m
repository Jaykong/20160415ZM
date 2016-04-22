//
//  main.m
//  class2.1.2
//
//  Created by 张苗 on 4/20/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Accumulator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Accumulator *myAcc =[[Accumulator alloc] init];
        
        [myAcc setAccumulator:200.0];
        [myAcc accmulatorAdd:100.0];
        [myAcc accmulatorSubtract:100.0];
        [myAcc accmulatorDivide:20];
        [myAcc accmulatorMutiply:2.0];
        [myAcc clear];
        NSLog(@"%g",[myAcc accumulator]);
        
      
    }
    return 0;
        
}
