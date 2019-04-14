//
//  GumballMachine.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/15.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StateInterface.h"

NS_ASSUME_NONNULL_BEGIN

@interface GumballMachine : NSObject

@property (strong, nonatomic) id<StateInterface> currentState;
@property (assign, nonatomic) NSInteger          numberGumballs;

@property (strong, nonatomic) id<StateInterface> soldState;
@property (strong, nonatomic) id<StateInterface> soldOutState;
@property (strong, nonatomic) id<StateInterface> noQuarterState;
@property (strong, nonatomic) id<StateInterface> hasQuarterState;
@property (strong, nonatomic) id<StateInterface> winnerState;

- (instancetype)initWithNumberGumballs:(NSInteger)numberGumballs;

- (void)insertQuarter;

- (void)ejectQuarter;

- (void)turnCrank;

- (void)releaseBall;

@end

NS_ASSUME_NONNULL_END
