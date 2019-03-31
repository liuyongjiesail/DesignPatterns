//
//  PancakeHouseMenuIterator.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/31.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "PancakeHouseMenuIterator.h"

@interface PancakeHouseMenuIterator ()

@property (strong, nonatomic) NSMutableArray<MenuItem *> *menuItems;
@property (assign, nonatomic) NSInteger position;

@end

@implementation PancakeHouseMenuIterator

- (instancetype)initMenuItems:(NSMutableArray<MenuItem *> *)menuItems {
    self = [super init];
    if (self) {
        self.menuItems = menuItems;
        self.position = 0;
    }
    return self;
}

- (BOOL)hasNext {
    if (self.position >= self.menuItems.count) {
        self.position = 0;
        return NO;
    } else {
        return YES;
    }
}

- (MenuItem *)next {
    MenuItem *result = self.menuItems[self.position];
    self.position++;
    return result;
}

- (void)remove { 
    [self.menuItems removeLastObject];
}

@end
