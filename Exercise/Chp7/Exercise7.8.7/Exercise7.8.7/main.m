//
//  main.m
//  Exercise7.8.7
//
//  Created by 张苗 on 4/30/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Complex.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Complex * c1 = [[Complex alloc] init];
        Complex * c2 = [[Complex alloc] init];
        Complex * resultComplex;
        
        c1.a = 5;
        c1.b = 7;
        
        c2.a = 2;
        c2.b = 4;
        
        resultComplex = [c1 add:c2];
        [resultComplex print];

    }
    return 0;
}
