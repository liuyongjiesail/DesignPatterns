//
//  CPPancakeHouseMenu.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/7.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "CPPancakeHouseMenu.h"


@implementation CPPancakeHouseMenu

- (instancetype)initWithName:(NSString *)name description:(NSString *)description {
    self = [super initWithName:name description:description];
    if (self) {
        [self add:[[CPMenuItem alloc] initWithName:@"鸡蛋" description:@"香卤、煎炸" vegetarian:YES price:2.00]];
        [self add:[[CPMenuItem alloc] initWithName:@"灌饼" description:@"夹土豆丝" vegetarian:YES price:4.50]];
        [self add:[[CPMenuItem alloc] initWithName:@"小笼包" description:@"猪肉大葱" vegetarian:NO price:7.50]];
    }
    return self;
}

@end
