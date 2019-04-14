//
//  SoldOutState.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/15.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "SoldOutState.h"
#import "GumballMachine.h"

@interface SoldOutState ()

@property (strong, nonatomic) GumballMachine *gumballMachine;

@end

@implementation SoldOutState

- (instancetype)initWithMachine:(GumballMachine *)machine {
    self = [super init];
    if (self) {
        self.gumballMachine = machine;
    }
    return self;
}

- (void)insertQuarter {
    NSLog(@"对不起，已售罄");
}

- (void)ejectQuarter {
    NSLog(@"对不起，已售罄");
}

- (void)turnCrank {
    NSLog(@"对不起，已售罄");
}

- (void)dispense {
    NSLog(@"对不起，已售罄");
}

@end
