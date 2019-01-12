//
//  Beverage.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/6.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "Beverage.h"

@implementation Beverage

- (instancetype)init {
    self = [super init];
    if (self) {
        self.objectDescription = @"Unknown Beverage";
    }
    return self;
}

@end
