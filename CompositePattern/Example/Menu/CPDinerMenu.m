//
//  CPDinerMenu.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/7.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "CPDinerMenu.h"

@implementation CPDinerMenu

- (instancetype)initWithName:(NSString *)name description:(NSString *)description {
    self = [super initWithName:name description:description];
    if (self) {
        [self add:[[CPMenuItem alloc] initWithName:@"羊杂汤" description:@"加粉、加饼子" vegetarian:NO price:25.00]];
        [self add:[[CPMenuItem alloc] initWithName:@"油泼面" description:@"加辣、葱花、香菜" vegetarian:YES price:18.00]];
        [self add:[[CPMenuItem alloc] initWithName:@"大盘鸡拌面" description:@"面是细的拉面" vegetarian:NO price:15.00]];
    }
    return self;
}

@end
