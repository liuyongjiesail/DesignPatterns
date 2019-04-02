//
//  DinerMenuIterator.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/31.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "DinerMenuIterator.h"

@interface DinerMenuIterator ()

@property (strong, nonatomic) NSMutableDictionary<NSString *, MenuItem *> *menuItems;
@property (assign, nonatomic) NSInteger position;

@end

@implementation DinerMenuIterator

- (instancetype)initMenuItems:(NSMutableDictionary<NSString *, MenuItem *> *)menuItems {
    self = [super init];
    if (self) {
        self.menuItems = menuItems;
        self.position = 0;
    }
    return self;
}

- (BOOL)hasNext {
    if (self.position >= self.menuItems.allValues.count) {
        self.position = 0;
        return NO;
    } else {
        return YES;
    }
}

- (MenuItem *)next {
    MenuItem *result = self.menuItems.allValues[self.position];
    self.position++;
    return result;
}

- (void)remove {
    MenuItem *result = self.menuItems.allValues.lastObject;
    [self.menuItems removeObjectForKey:result.name];
    
}

@end
