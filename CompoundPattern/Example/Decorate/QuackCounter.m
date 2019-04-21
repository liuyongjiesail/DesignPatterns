//
//  QuackCounter.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/21.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "QuackCounter.h"
#import "CPObserverInterface.h"

static NSInteger numberOfQuacks;

@interface QuackCounter ()

@property (strong, nonatomic) id<CPQuackInterface> duck;

@end

@implementation QuackCounter

- (instancetype)initWithQuackCounter:(id<CPQuackInterface>)duck {
    self = [super init];
    if (self) {
        self.duck = duck;
    }
    return self;
}

- (void)quack {
    [self.duck quack];
    numberOfQuacks++;
}

+ (NSInteger)numberOfQuacks {
    return numberOfQuacks;
}

- (void)registerObserver:(id<CPObserverInterface>)observer {
    [self.duck registerObserver:observer];
}

- (void)notifyObservers {
    [self.duck notifyObservers];
}

@end
