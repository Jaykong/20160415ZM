//
//  main.m
//  Exersize7.8.1
//
//  Created by 张苗 on 4/25/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fraction * f1 = [[Fraction alloc] init];
        Fraction * f2 = [[Fraction alloc] init];
        Fraction * f3 ;
        
        [f1 setTo:1 Over:2];
        [f1 print];
        printf("+\n");
        
        [f2 setTo:2 Over:3];
        [f2 print];
        printf("=\n");
        
        f3 = [f1 add: f2];
        [f3 print];

        [f1 setTo:1 Over:2];
        [f1 print];
        printf("*\n");
        
        [f2 setTo:2 Over:3];
        [f2 print];
        printf("=\n");
        
        f3 = [f1 mul: f2];
        [f3 print];
        
    }
    return 0;
}
