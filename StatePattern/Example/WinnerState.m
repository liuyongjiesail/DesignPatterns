//
//  WinnerState.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/15.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "WinnerState.h"

@interface WinnerState ()

@property (strong, nonatomic) GumballMachine *gumballMachine;

@end

@implementation WinnerState

- (instancetype)initWithMachine:(GumballMachine *)machine {
    self = [super init];
    if (self) {
        self.gumballMachine = machine;
    }
    return self;
}

- (void)insertQuarter {
    NSLog(@"请等待.. 我们正在输出一个糖果");
}

- (void)ejectQuarter {
    NSLog(@"对不起，你已经转动了糖果机");
}

- (void)turnCrank {
    NSLog(@"再转动一次需要再投入另一个25美分");
}

- (void)dispense {
    NSLog(@"你赢了");
    [self.gumballMachine releaseBall];
    if (self.gumballMachine.numberGumballs == 0) {
        self.gumballMachine.currentState = self.gumballMachine.soldOutState;
    } else {
        [self.gumballMachine releaseBall];
        if (self.gumballMachine.numberGumballs > 0) {
            self.gumballMachine.currentState = self.gumballMachine.noQuarterState;
        } else {
            self.gumballMachine.currentState = self.gumballMachine.soldOutState;
        }
    }
}

@end
