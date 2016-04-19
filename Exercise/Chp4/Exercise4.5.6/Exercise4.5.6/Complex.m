//
//  Complex.m
//  Exercise4.5.6
//
//  Created by 张苗 on 4/19/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "Complex.h"

@implementation Complex{
    double real;
    double imaginary;
    
}
-(void) setReal: (double) a{
    real = a;
}
-(void) setImaginary: (double) b{
    imaginary = b;
}
-(void) print{
    NSLog(@"%g+%gi",real,imaginary);
}
-(double) real{
    return real;
}
-(double) imaginary{
    return imaginary;
}
@end
