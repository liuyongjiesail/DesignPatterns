//
//  Decaf.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/6.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "Decaf.h"

@implementation Decaf

- (instancetype)init {
    self = [super init];
    if (self) {
        self.objectDescription = @"Decaf";
    }
    return self;
}

- (float)cost {
    return 1.05;
}

@end
