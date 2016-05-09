//
//  Container.h
//  RandomItems
//
//  Created by 张苗 on 5/9/16.
//  Copyright © 2016 张苗. All rights reserved.
//

#import "Item.h"

@interface Container : Item

@property (nonatomic,strong) NSMutableArray *subItems;

-(NSString *)description;

@end
