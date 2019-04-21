//
//  CPObserverInterface.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/21.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "CPObservableImp.h"

@interface CPObservableImp ()

@property (strong, nonatomic) NSMutableArray<id<CPObserverInterface>> *observers;
@property (strong, nonatomic) id<QuackObservableInterface> duck;

@end

@implementation CPObservableImp

- (instancetype)initWithDuck:(id<QuackObservableInterface>)duck {
    self = [super init];
    if (self) {
        self.duck = duck;
    }
    return self;
}

- (void)registerObserver:(id)observer {
    [self.observers addObject:observer];
}

- (void)notifyObservers {
    [self.observers enumerateObjectsUsingBlock:^(id<CPObserverInterface>  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj update:self.duck];
    }];
}

- (NSMutableArray<id<CPObserverInterface>> *)observers {
    if (!_observers) {
        _observers = [NSMutableArray array];
    }
    return _observers;
}

@end
