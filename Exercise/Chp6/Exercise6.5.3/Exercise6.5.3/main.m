//
//  main.m
//  Exercise6.5.3
//
//  Created by 张苗 on 4/23/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Fraction * myFra = [[Fraction alloc] init];
        
        myFra.num = 2;
        myFra.deno = 2;
        
        [myFra print];
  
        
        
    }
    return 0;
}
