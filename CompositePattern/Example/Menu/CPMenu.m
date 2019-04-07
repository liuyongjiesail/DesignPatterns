//
//  CPMenu.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/7.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "CPMenu.h"

@interface CPMenu ()

@property (strong, nonatomic) NSMutableArray<MenuComponent *> *menuComponents;

@end

@implementation CPMenu

- (instancetype)initWithName:(NSString *)name description:(NSString *)description {
    
    self = [super init];
    if (self) {
        self.name = name;
        self.Description = description;
    }
    return self;
    
}

- (void)add:(MenuComponent *)menuComponent {
    [self.menuComponents addObject:menuComponent];
}

- (void)remove:(MenuComponent *)menuComponent {
    [self.menuComponents removeObject:menuComponent];
}

- (MenuComponent *)childIndex:(NSInteger)index {
    return [self.menuComponents objectAtIndex:index];
}

- (void)print {
    NSLog(@"---------- %@ -- %@ ------------\n", self.name, self.Description);
    [self.menuComponents enumerateObjectsUsingBlock:^(MenuComponent * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj print];
    }];
}

#pragma mark - Lazy Loading

- (NSMutableArray<MenuComponent *> *)menuComponents {
    if (!_menuComponents) {
        _menuComponents = [NSMutableArray array];
    }
    return _menuComponents;
}

@end
