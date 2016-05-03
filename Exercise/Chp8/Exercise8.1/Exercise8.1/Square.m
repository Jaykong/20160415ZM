//
//  Square.m
//  Exercise8.1
//
//  Created by 张苗 on 4/30/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "Square.h"

@implementation Square
-(void)setSide: (int)s
{
    [self setWidth:s andHeight:s];
}
-(int)side
{
    return self.width;
}
@end
