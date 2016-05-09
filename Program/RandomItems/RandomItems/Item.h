//
//  Item.h
//  RandomItems
//
//  Created by 张苗 on 5/4/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject

@property  Item * containedItem;
@property  Item * container;
@property  NSString * itemName;
@property  NSString * serialNumber;
@property  int valueInDollars;
@property  NSDate * dateCreated;

+(instancetype) RandomItem;

//Item 类的指定初始化方法
-(instancetype) initWithItemName: (NSString *)name valueInDollars: (int)value serialNumber:(NSString *)sNumber;

-(instancetype) initWithItemName: (NSString *)name;


@end
