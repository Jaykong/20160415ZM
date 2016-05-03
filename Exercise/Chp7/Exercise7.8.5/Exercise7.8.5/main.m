//
//  main.m
//  Exercise7.8.5
//
//  Created by 张苗 on 4/30/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *myFraction = [[Fraction alloc] init];
        
        myFraction.num = 1;
        myFraction.deno = 3;
        
        NSLog(@"The num is %i, and the deno is %i", myFraction.num, myFraction.deno);
    }
    return 0;
}
