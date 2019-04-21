//
//  CPDuckCall.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/21.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "CPDuckCall.h"
#import "CPObservableImp.h"

@interface CPDuckCall ()

@property (strong, nonatomic) CPObservableImp *observable;

@end

@implementation CPDuckCall

- (void)quack {
    NSLog(@"Kwak");
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
