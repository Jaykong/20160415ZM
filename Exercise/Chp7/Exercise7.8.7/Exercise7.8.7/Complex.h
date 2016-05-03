//
//  Complex.h
//  Exercise7.8.7
//
//  Created by 张苗 on 4/30/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject
@property int a, b;
-(void)print;
-(Complex *)add: (Complex *)complexNum;
@end
