//
//  GumballMachine.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/15.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "GumballMachine.h"
#import "SoldState.h"
#import "SoldOutState.h"
#import "NoQuarterState.h"
#import "HasQuarterState.h"
#import "WinnerState.h"

@implementation GumballMachine

- (instancetype)initWithNumberGumballs:(NSInteger)numberGumballs {
    self = [super init];
    if (self) {
        self.soldState = [[SoldState alloc] initWithMachine:self];
        self.soldOutState = [[SoldOutState alloc] initWithMachine:self];
        self.noQuarterState = [[NoQuarterState alloc] initWithMachine:self];
        self.hasQuarterState = [[HasQuarterState alloc] initWithMachine:self];
        self.winnerState = [[WinnerState alloc] initWithMachine:self];
        
        self.numberGumballs = numberGumballs;
        if (numberGumballs > 0) {
            self.currentState = self.noQuarterState;
        }
    }
    return self;
}

- (void)insertQuarter {
    [self.currentState insertQuarter];
}

- (void)ejectQuarter {
    [self.currentState ejectQuarter];
}

- (void)turnCrank {
    [self.currentState turnCrank];
    [self.currentState dispense];
}

- (void)releaseBall {
    NSLog(@"输出糖果");
    if (self.numberGumballs != 0) {
        self.numberGumballs -= 1;
    }
}

@end
