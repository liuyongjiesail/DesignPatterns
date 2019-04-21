//
//  CPMallardDuck.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/21.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "CPMallardDuck.h"
#import "CPObservableImp.h"

@interface CPMallardDuck ()

@property (strong, nonatomic) CPObservableImp *observable;

@end

@implementation CPMallardDuck

- (void)quack {
    NSLog(@"Quack");
    [self notifyObservers];
}

- (void)registerObserver:(id<CPObserverInterface>)observer {
    [self.observable registerObserver:observer];
}

- (void)notifyObservers {
    [self.observable notifyObservers];
}

- (CPObservableImp *)observable {
    if (!_observable) {
        _observable = [[CPObservableImp alloc] initWithDuck:self];
    }
    return _observable;
}

@end
