//
//  Container.m
//  RandomItems
//
//  Created by 张苗 on 5/9/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "Container.h"

@implementation Container

-(NSString *)description {
    NSString *string = [[NSString alloc] init];
    
    int sum = 0;
    
    NSMutableArray *array = [self subItems];
    
    for (int i = 0; i < [array count]; ++i) {
        sum += [array[i] valueInDollars] + [self valueInDollars];
    }
    
    string = [NSString stringWithFormat:@"Item total %d\n %@", sum, array];
    
    return string;
}

@end