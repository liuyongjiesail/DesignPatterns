//
//  CafeMenu.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/31.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "CafeMenu.h"
#import "CafeMenuIterator.h"

@interface CafeMenu ()

@property (strong, nonatomic) NSMutableSet<MenuItem *> *menuItems;

@end

@implementation CafeMenu

- (instancetype)init {
    self = [super init];
    if (self) {
        
        self.menuItems = [NSMutableSet setWithObjects:[[MenuItem alloc] initWithName:@"卡布奇诺" description:@"美式" vegetarian:YES price:22.00], [[MenuItem alloc] initWithName:@"拿铁" description:@"英国" vegetarian:YES price:24.50], [[MenuItem alloc] initWithName:@"点心" description:@"芒果味道" vegetarian:YES price:17.50], nil];
        
    }
    return self;
}

- (nonnull id<IteratorInterface>)createIterator {
    return [[CafeMenuIterator alloc] initMenuItems:self.menuItems];
}

@end
