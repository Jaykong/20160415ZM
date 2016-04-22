//
//  main.m
//  class2.1
//
//  Created by 张苗 on 4/20/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        float f1 = 1.2345;
        
        double d2 = 3.14;
        
        NSString *strVar=@"sting sting";
        
        
        NSArray *array = @[@"1st",@"2nd",@"3rd"];
        
        printf("f1:%.2f\n",f1);
        
        printf("d2:%.2f\n",d2);
        
        printf("f1:%s\n",[strVar UTF8String]);
        
        NSLog(@"starVar:%@",strVar);
        
        NSLog(@"%@",array[0]);
        
        NSMutableArray *mutaArr=[NSMutableArray arrayWithArray:array];
        //初始化
        for (NSString *str in mutaArr){
            NSLog(@"%@",str);
        }
        [mutaArr addObject:@"4th"];
        
        //快速枚举法
        
        NSLog(@"---------------");
        for (NSString *str in mutaArr){
            NSLog(@"%@",str);
        }
    }
    return 0;
}
