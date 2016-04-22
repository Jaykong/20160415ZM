//
//  main.m
//  Exercise5.7.3
//
//  Created by 张苗 on 4/22/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, m;
        
        NSLog(@"Table of from 1 to 10! ");
        NSLog(@"---      ----------");
        
        m = 1;
        
        for (n = 1; n <= 10; ++n)
        {
            m *= n;
            NSLog(@"%-2i        %i", n, m);
        }
    }
    return 0;
}
