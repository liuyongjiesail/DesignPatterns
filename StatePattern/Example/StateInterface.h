//
//  StateInterface.h
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/15.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GumballMachine;

NS_ASSUME_NONNULL_BEGIN

@protocol StateInterface <NSObject>

- (instancetype)initWithMachine:(GumballMachine *)machine;

- (void)insertQuarter;

- (void)ejectQuarter;

- (void)turnCrank;

- (void)dispense;

@end

NS_ASSUME_NONNULL_END
