//
//  main.m
//  Exercise5.7.1
//
//  Created by 张苗 on 4/20/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int n;
        
        NSLog(@"TABLE OF TRIANGULAR NUMBRS");
        NSLog(@"--         ---------");
        
        for(n=1;n<=10;++n){
            
            NSLog(@"%2i        %3i",n,n*n);
        }
    }
    return 0;
}
