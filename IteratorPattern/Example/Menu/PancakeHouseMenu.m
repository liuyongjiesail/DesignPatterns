//
//  PancakeHouseMenu.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/31.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "PancakeHouseMenu.h"
#import "PancakeHouseMenuIterator.h"

@interface PancakeHouseMenu ()

@property (strong, nonatomic) NSMutableArray<MenuItem *> *menuItems;

@end

@implementation PancakeHouseMenu

- (instancetype)init {
    self = [super init];
    if (self) {
        
        self.menuItems = [NSMutableArray array];
        
        [self.menuItems addObject:[[MenuItem alloc] initWithName:@"鸡蛋" description:@"香卤、煎炸" vegetarian:YES price:2.00]];
        [self.menuItems addObject:[[MenuItem alloc] initWithName:@"灌饼" description:@"夹土豆丝" vegetarian:YES price:4.50]];
        [self.menuItems addObject:[[MenuItem alloc] initWithName:@"小笼包" description:@"猪肉大葱" vegetarian:NO price:7.50]];
    }
    return self;
}

- (nonnull id<IteratorInterface>)createIterator {
    return [[PancakeHouseMenuIterator alloc] initMenuItems:self.menuItems];
}

@end
