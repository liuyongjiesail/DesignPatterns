//
//  DarkRoast.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/6.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "DarkRoast.h"

@implementation DarkRoast

- (instancetype)init {
    self = [super init];
    if (self) {
        self.objectDescription = @"DarkRoast";
    }
    return self;
}

- (float)cost {
    return 0.99;
}

@end
