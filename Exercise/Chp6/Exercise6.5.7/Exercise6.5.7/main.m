//
//  main.m
//  Exercise6.5.7
//
//  Created by 张苗 on 4/23/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int p, d;
        BOOL isPrime;
        //由于所有的偶数都不是素数，为了提高遍历效率，避开所有偶数。
        NSLog(@"2");
        for(p = 3; p <= 50; p += 2) {
            isPrime = YES;
            
            for(d = 3;  d < p; d += 2)
            {
                if(p % d == 0)
                    isPrime = NO;
            }
                    
        if(isPrime == YES) {
            NSLog(@"%i", p);
            }
        }
    }
            return 0;
}