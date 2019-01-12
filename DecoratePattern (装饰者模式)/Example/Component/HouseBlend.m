//
//  HouseBlend.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/6.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "HouseBlend.h"

@implementation HouseBlend

- (instancetype)init {
    self = [super init];
    if (self) {
        self.objectDescription = @"HouseBlend";
    }
    return self;
}

- (float)cost {
    return 0.89;
}

@end
