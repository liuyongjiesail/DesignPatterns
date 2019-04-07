//
//  MenuComponent.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/7.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "MenuComponent.h"

@implementation MenuComponent

- (void)add:(MenuComponent *)menuComponent {
    NSLog(@"默认实现");
}

- (void)remove:(MenuComponent *)menuComponent {
    NSLog(@"默认实现");
}

- (MenuComponent *)childIndex:(NSInteger)index {
    NSLog(@"默认实现");
    return [MenuComponent new];
}

- (void)print {
    NSLog(@"默认实现");
}

@end
