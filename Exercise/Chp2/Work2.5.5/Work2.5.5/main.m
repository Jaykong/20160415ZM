//
//  main.m
//  Work2.5.5
//
//  Created by 张苗 on 4/16/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a=25,b=37,c=19,sum;
        // compute results
        sum=a+b-c;
        //display results
        NSLog(@"The answer is %i",sum);
    /*
        1 大小写错误：INT不被识别；
        2 注释错误：//是单行注释，／＊＊／是多行注释，需要成对使用；
        3 参数没有被声明；
        4 输出的是字符串应该用""修饰，单引号''是修饰单个字符的；
     
         
    */
    }

    return 0;
}
