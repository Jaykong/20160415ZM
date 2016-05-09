//
//  Item.m
//  RandomItems
//
//  Created by 张苗 on 5/4/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "Item.h"

@implementation Item

+(instancetype) RandomItem{
    NSArray *randomAdjectivaList = @[@"Fluffy", @"Rusty", @"Shint"];
    
    NSArray *randomNounList = @[@"Bear", @"Spork", @"Mac"];
    
    NSUInteger adjectiveIndex = arc4random () % [randomAdjectivaList count];
    NSUInteger nounIndex = arc4random () % [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat: @"%@ %@",randomAdjectivaList[adjectiveIndex], randomNounList[nounIndex]];
    
    int randomValue = arc4random() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c", 'O'+arc4random()%10, 'A'+arc4random()%26, 'O'+arc4random()%10, 'A'+arc4random()%26, 'O'+arc4random()%10];
    
    Item *newItem = [[self alloc] initWithItemName:randomName valueInDollars:randomValue serialNumber:randomSerialNumber];
    
    return newItem;
}

-(instancetype) initWithItemName: (NSString *)name valueInDollars: (int)value serialNumber:(NSString *)sNumber
{
    self = [super init];
    if(self)
    {
        _itemName = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        
        //设置_dateCreated的值为系统当前时间
        _dateCreated = [[NSDate alloc] init];
    }
    //返回初始化后的对象的新地址
    return self;
}

-(instancetype) initWithItemName: (NSString *)name
{
    return [self initWithItemName: name valueInDollars: 0 serialNumber: @""];
}

-(instancetype)init
{
    return [self initWithItemName:@"Item"];
}

-(void)dealloc
{
    NSLog(@"Destroyed: %@", self);
}

-(NSString *) description
{
    NSString *descriptionstring = [[NSString alloc] initWithFormat: @"%@ (%@): Worth $%d, record on %@", self.itemName, self.serialNumber, self.valueInDollars, self.dateCreated];
    
    return descriptionstring;
}

@end
