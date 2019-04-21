//
//  CountingDuckFactory.m
//  DesignPatterns
//
//  Created by 刘永杰 on 2019/4/21.
//  Copyright © 2019 刘永杰. All rights reserved.
//

#import "CountingDuckFactory.h"

@implementation CountingDuckFactory

- (id<CPQuackInterface>)createMallardDuck {
    return [[QuackCounter alloc] initWithQuackCounter:CPMallardDuck.new];
}

- (id<CPQuackInterface>)createRedheadDuck {
    return [[QuackCounter alloc] initWithQuackCounter:CPRedheadDuck.new];
}

- (id<CPQuackInterface>)createDuckCall {
    return [[QuackCounter alloc] initWithQuackCounter:CPDuckCall.new];
}

- (id<CPQuackInterface>)createRubberDuck {
    return [[QuackCounter alloc] initWithQuackCounter:CPRubberDuck.new];
}

@end
