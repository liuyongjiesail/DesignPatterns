//
//  GooseAdapter.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/21.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "GooseAdapter.h"
#import "CPObservableImp.h"

@interface GooseAdapter ()

@property (strong, nonatomic) Goose *goose;
@property (strong, nonatomic) CPObservableImp *observable;

@end

@implementation GooseAdapter

- (instancetype)initGooseAdapter:(Goose *)goose {
    self = [super init];
    if (self) {
        self.goose = goose;
    }
    return self;
}

- (void)quack {
    [self.goose honk];
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
