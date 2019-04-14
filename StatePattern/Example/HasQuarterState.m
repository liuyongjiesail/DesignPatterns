//
//  HasQuarterState.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/15.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "HasQuarterState.h"
#import "GumballMachine.h"

@interface HasQuarterState ()

@property (strong, nonatomic) GumballMachine *gumballMachine;

@end

@implementation HasQuarterState

- (instancetype)initWithMachine:(GumballMachine *)machine {
    self = [super init];
    if (self) {
        self.gumballMachine = machine;
    }
    return self;
}

- (void)insertQuarter {
    NSLog(@"你不能投入另一个25美分");
}

- (void)ejectQuarter {
    NSLog(@"退出25美分");
    self.gumballMachine.currentState = self.gumballMachine.noQuarterState;
}

- (void)turnCrank {
    NSLog(@"已开始，请稍后...");
    if (arc4random() % 10) {
        self.gumballMachine.currentState = self.gumballMachine.winnerState;
    }
    self.gumballMachine.currentState = self.gumballMachine.soldState;
}

- (void)dispense {
    // 不恰当的操作
    NSLog(@"没有糖果执行");
}

@end
