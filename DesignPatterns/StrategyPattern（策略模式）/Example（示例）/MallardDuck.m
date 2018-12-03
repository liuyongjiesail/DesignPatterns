//
//  MallardDuck.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/3.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "MallardDuck.h"
#import "Quack.h"
#import "FlyWithWings.h"

@implementation MallardDuck

- (instancetype)init {
    self = [super init];
    if (self) {
        self.quackInterface = [Quack new];
        self.flyInterface = [FlyWithWings new];
    }
    return self;
}

- (void)display {
    NSLog(@"野鸭");
}

@end
