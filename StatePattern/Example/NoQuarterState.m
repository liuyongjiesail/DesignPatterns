//
//  NoQuarterState.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/15.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "NoQuarterState.h"
#import "GumballMachine.h"

@interface NoQuarterState ()

@property (strong, nonatomic) GumballMachine *gumballMachine;

@end

@implementation NoQuarterState

- (instancetype)initWithMachine:(GumballMachine *)machine {
    self = [super init];
    if (self) {
        self.gumballMachine = machine;
    }
    return self;
}

- (void)insertQuarter {
    NSLog(@"你投入了25美分");
    // 修改状态为有25美分
    self.gumballMachine.currentState = self.gumballMachine.hasQuarterState;
}

- (void)ejectQuarter {
    NSLog(@"你没有投入25美分");
}

- (void)turnCrank {
    NSLog(@"你不能转动，因为没有25美分");
}

- (void)dispense {
    NSLog(@"你需要支付");
}

@end
