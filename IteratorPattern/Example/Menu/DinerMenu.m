//
//  DinerMenu.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/3/31.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "DinerMenu.h"
#import "DinerMenuIterator.h"

@interface DinerMenu ()

@property (strong, nonatomic) NSMutableDictionary<NSString *, MenuItem *> *menuItems;

@end

@implementation DinerMenu

- (instancetype)init {
    self = [super init];
    if (self) {
        
        self.menuItems = [NSMutableDictionary dictionary];
        
        [self.menuItems setObject:[[MenuItem alloc] initWithName:@"羊杂汤" description:@"加粉、加饼子" vegetarian:NO price:25.00] forKey:@"羊杂汤"];
        [self.menuItems setObject:[[MenuItem alloc] initWithName:@"油泼面" description:@"加辣、葱花、香菜" vegetarian:YES price:18.00] forKey:@"油泼面"];
        [self.menuItems setObject:[[MenuItem alloc] initWithName:@"大盘鸡拌面" description:@"面是细的拉面" vegetarian:NO price:15.00] forKey:@"大盘鸡拌面"];
        
    }
    return self;
}

- (nonnull id<IteratorInterface>)createIterator { 
    return [[DinerMenuIterator alloc] initMenuItems:self.menuItems];
}

@end
