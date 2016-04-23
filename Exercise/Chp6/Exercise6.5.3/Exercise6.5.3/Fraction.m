//
//  Fraction.m
//  Exercise6.5.3
//
//  Created by 张苗 on 4/23/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction{
    int num;
    int deno;
}
@synthesize num, deno;

-(void)print{
    if(num == 0)
        printf("Num is zero \n");
        
    else if(deno == 1)
        printf(" %i\n", num);
    else
        printf(" %i / %i\n", num, deno);
}
-(double)convertToNum{
    if (deno != 0 )
        return (double)num / deno;
    else
        return NAN;

}


@end
