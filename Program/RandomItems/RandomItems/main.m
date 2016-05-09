//
//  main.m
//  RandomItems
//
//  Created by 张苗 on 5/4/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"
#import "Container.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //初始化Container
        Container * items = [[Container alloc] init];
        
        NSMutableArray *array = [[NSMutableArray alloc] init] ;
        
        for (int i = 0; i < 10; i++)
        {
            Item *item = [Item RandomItem];
            [array addObject:item];
        }
        
        //将数组array 赋值给 Container的subitems对象
        items.subItems = array;
        NSLog(@"%@",items);
        
        //释放items所指向的NSMutableArray对象
        items = nil;
        
    }
    return 0;
}
//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        
//        //NSArray *myArray = [ NSArray arrayWithObjects: @"Zero", @"One", @"Two", @"Three", nil ];
//        //创建一个NSMutableArray对象，并用items变量保存该对象的地址
//        NSMutableArray *items = [[NSMutableArray alloc] init];
//        
//        
//        //向items所指向的NSMutableArray对象，发送addObject消息
//        //每次传入一个字符串
////        [items addObject: @"One"];
////        [items addObject: @"Two"];
////        [items addObject: @"Three"];
////        
////        [items insertObject: @"Zero" atIndex: 0];
////        int i;
////        for (i= 0; i < 10; i++)
////        {
////            Item *item = [Item RandomItem];
////            [items addObject:item];
////        }
//        Item *backpack = [[Item alloc] initWithItemName:@"Backpack"];
//        [items addObject:backpack];
//        
//        Item *calculator = [[Item alloc] initWithItemName:@"Calculator"];
//        [items addObject:calculator];
//        
//        backpack.containedItem = calculator;
//        
//        backpack = nil;
//        calculator = nil;
//        
//        //快速枚举
//        for (NSString *item in items)
//        {
//            NSLog(@"%@", item);
//        }
//        
////        Item *item = [[Item alloc] initWithItemName:@"Red Sofa" valueInDollars: 100 serialNumber:@" A1B2C "];
////        Item *itemWithName = [[Item alloc] initWithItemName:@"Blue Sofa"];
////        Item *itemWithNoName = [[Item alloc] init];
////        item.itemName = @"Red Sofa";
////        item.serialNumber = @"A1B2C";
////        item.valueInDollars = 100;
//        
//        //NSLog(@"%@ %@ %@ %d", item.itemName, item.dateCreated, item.serialNumber, item.valueInDollars);
//        
//        //程序会先调用相应实参的description方法，然后用返回的字符串替换％@
////        NSLog(@"%@", item);
////        NSLog(@"%@", itemWithName);
////        NSLog(@"%@", itemWithNoName);
//        NSLog(@"setting items to nil...");
//        //释放items所指向的NSMutableArray对象
//        items = nil;
//
//        
//    }
//    return 0;
//}
