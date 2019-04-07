//
//  CPCafeMenu.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/7.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "CPCafeMenu.h"

@implementation CPCafeMenu

- (instancetype)initWithName:(NSString *)name description:(NSString *)description {
    self = [super initWithName:name description:description];
    if (self) {
        [self add:[[CPMenuItem alloc] initWithName:@"卡布奇诺" description:@"美式" vegetarian:YES price:22.00]];
        [self add:[[CPMenuItem alloc] initWithName:@"拿铁" description:@"英国" vegetarian:YES price:24.50]];
        [self add:[[CPMenuItem alloc] initWithName:@"点心" description:@"芒果味道" vegetarian:YES price:17.50]];
    }
    return self;
}

@end
