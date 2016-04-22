//
//  main.m
//  class2.3
//
//  Created by 张苗 on 4/20/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int u,v,temp;
        scanf(" %i   %i", &u, &v);
        while(u % v != 0){

            temp = u % v;
            u = v;
            v = temp;
        }
        printf("the greatest common divisior:%i\n",v );
    }
    return 0;
}
