//
//  Espresso.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/6.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "Espresso.h"

@implementation Espresso

- (instancetype)init {
    self = [super init];
    if (self) {
        self.objectDescription = @"Espresso";
    }
    return self;
}

- (float)cost {
    return 1.99;
}

@end
