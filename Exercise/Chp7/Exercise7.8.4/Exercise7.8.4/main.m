//
//  main.m
//  Exercise7.8.4
//
//  Created by 张苗 on 4/30/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fraction * f1 = [[Fraction alloc] init];
        Fraction * f2 = [[Fraction alloc] init];
        //Fraction * f3 ;
        
        f1.num = 7;
        f1.deno = 2;
        [f1 print];
        
        f2.num = 2;
        f2.deno = 2;
        [f2 print];
        
        //f3 = [f1 add: f2];
        //[f3 print];
        
    }
    return 0;
}