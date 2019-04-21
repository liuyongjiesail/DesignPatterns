//
//  Flock.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/21.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "Flock.h"

@implementation Flock

- (void)quack {
    [self.quackArray enumerateObjectsUsingBlock:^(id<CPQuackInterface>  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj quack];
    }];
}

- (NSMutableArray<id<CPQuackInterface>> *)quackArray {
    if (!_quackArray) {
        _quackArray = [NSMutableArray array];
    }
    return _quackArray;
}

- (void)registerObserver:(id<CPObserverInterface>)observer {
    [self.quackArray enumerateObjectsUsingBlock:^(id<CPQuackInterface>  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj registerObserver:observer];
    }];
}

@end
