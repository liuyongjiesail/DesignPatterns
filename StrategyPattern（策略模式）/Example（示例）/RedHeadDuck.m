//
//  RedHeadDuck.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2018/12/3.
//  Copyright © 2018 刘永杰. All rights reserved.
//

#import "RedHeadDuck.h"
#import "FlyBehavior/FlyNoWay.h"
#import "QuackBehavior/Squeak.h"

@implementation RedHeadDuck

- (instancetype)init {
    self = [super init];
    if (self) {
        self.flyInterface = [FlyNoWay new];
        self.quackInterface = [Squeak new];
    }
    return self;
}

- (void)display {
    NSLog(@"红头鸭子🦆");
}

@end
