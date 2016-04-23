//
//  main.m
//  Exercise7-4
//
//  Created by 张苗 on 4/23/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction * aFra = [[Fraction alloc] init];
        Fraction * bFra = [[Fraction alloc] init];
        
        [aFra setTo: 1 over:4 ];
        [bFra setTo: 1 over:2 ];
        
        //print result
        
        [aFra print];
        NSLog(@"+");
        
        [bFra print];
        NSLog(@"=");
        
        [aFra add: bFra];
        [aFra print];
    }
    return 0;
}
