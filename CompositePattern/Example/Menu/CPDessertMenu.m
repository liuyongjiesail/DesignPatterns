//
//  CPDessertMenu.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/7.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "CPDessertMenu.h"

@implementation CPDessertMenu

- (instancetype)initWithName:(NSString *)name description:(NSString *)description {
    self = [super initWithName:name description:description];
    if (self) {
        [self add:[[CPMenuItem alloc] initWithName:@"绿豆糕" description:@"甜的" vegetarian:YES price:5.00]];
        [self add:[[CPMenuItem alloc] initWithName:@"闻喜煮饼" description:@"山西闻喜县特产" vegetarian:YES price:10.00]];
        [self add:[[CPMenuItem alloc] initWithName:@"驴打滚" description:@"北京特产" vegetarian:YES price:15.50]];
    }
    return self;
}

@end
